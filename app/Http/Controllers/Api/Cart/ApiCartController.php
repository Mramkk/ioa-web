<?php

namespace App\Http\Controllers\Api\Cart;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\FirstBuy;
use App\Models\Morder;
use App\Models\Mplant;
use App\Models\Plant;
use App\Models\ShippingCharges;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ApiCartController extends Controller
{

    public function count(): JsonResponse
    {

        $obj = Cart::count();
        return ApiRes::count($obj);
        //        testing
    }

    public function data()
    {

        $obj = Cart::Where('uid', auth()->user()->id)->with('firstBuy')->with('coupon')->with('plant')->with('img')->get();
        return ApiRes::data($obj);
    }


    public function add(Request $req)
    {
        $status = null;
        $totalShippingAmt = null;
        $order =  Morder::where('uid', auth()->user()->id)->first();
        $fb = FirstBuy::where('uid', auth()->user()->id)->first();
        if ($order == null &&  $fb == null) {
            $fb = new FirstBuy();
            $fb->uid = auth()->user()->id;
            $fb->save();
        } else {
            $fb->status = "0";
            $fb->save();
        }

        $plant = Plant::where('pid', $req->pid)->first();
        $shipping = ShippingCharges::where('category', $plant->category)->first();
        if ($shipping->category == "Product" && $plant->unit == "KG" || $plant->unit == "Ltr" || $plant->unit == "Combo") {
            $totalShippingAmt = $plant->weight * $shipping->amount;
        } else {
            $totalShippingAmt = $shipping->amount;
        }
        $cart = Cart::Where('uid', auth()->user()->id)->first();
        $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $req->pid)->first();
        if ($obj == null && $cart == null) {
            $obj = new Cart();
            $obj->uid = auth()->user()->id;
            $obj->pid = $req->pid;
            $obj->shipping_charges = $totalShippingAmt;
            $status = $obj->save();
            if ($status) {
                return ApiRes::success("Item added into cart.");
            } else {
                return ApiRes::error();
            }
        } elseif ($obj == null && $cart != null) {
            // if already Coupon Code used in cart .
            $obj = new Cart();
            $obj->uid = auth()->user()->id;
            $obj->pid = $req->pid;
            $obj->coupon_code = $cart->coupon_code;
            $obj->shipping_charges = $totalShippingAmt;
            $status = $obj->save();
            if ($status) {
                return ApiRes::success("Item added into cart.");
            } else {
                return ApiRes::error();
            }
        } else {
            $obj->qty = $obj->qty += 1;
            $obj->shipping_charges = $obj->shipping_charges += $totalShippingAmt;

            $status = $obj->update();
            if ($status) {
                return ApiRes::success("Item qty updated.");
            } else {
                return ApiRes::error();
            }
        }
    }
    public function addAll(Request $req)
    {
        $cart = Cart::Where('uid', auth()->user()->id)->whereNotNull('coupon_code')->first();
        $status = null;
        $order =  Morder::where('uid', auth()->user()->id)->first();
        $firstBuy = FirstBuy::where('uid', auth()->user()->id)->first();
        if ($order == null && $firstBuy == null) {
            $fb = new FirstBuy();
            $fb->uid = auth()->user()->id;
            $fb->save();
        }

        foreach ($req->pid as $pid) {
            $totalShippingAmt = null;
            $plant = Plant::where('pid', $pid)->first();
            $shipping = ShippingCharges::where('category', $plant->category)->first();
            if ($shipping->category == "Product" && $plant->unit == "KG" || $plant->unit == "Ltr" || $plant->unit == "Combo") {
                $totalShippingAmt = $plant->weight * $shipping->amount;
            } else {
                $totalShippingAmt = $shipping->amount;
            }

            $cart = Cart::Where('uid', auth()->user()->id)->whereNotNull('coupon_code')->first();
            $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $pid)->first();
            // $qty = $obj->qty + 1;
            if ($obj == null && $cart == null) {
                $obj = new Cart();
                $obj->uid = auth()->user()->id;
                $obj->pid = $pid;
                $obj->shipping_charges = $totalShippingAmt;
                $status = $obj->save();
            } elseif ($obj == null && $cart != null) {
                $obj = new Cart();
                $obj->uid = auth()->user()->id;
                $obj->coupon_code =  $cart->coupon_code;
                $obj->pid = $pid;
                $obj->shipping_charges = $totalShippingAmt;
                $status = $obj->save();
            } elseif ($cart->coupon_code != null && $obj->qty != null) {
                $obj->coupon_code =  $cart->coupon_code;
                $obj->qty =  $obj->qty + 1;
                $obj->shipping_charges = $obj->shipping_charges += $totalShippingAmt;
                $status = $obj->update();
            } elseif ($obj->qty != null) {
                $obj->coupon_code =  $cart->coupon_code;
                $obj->qty =  $obj->qty + 1;
                $obj->shipping_charges = $obj->shipping_charges += $totalShippingAmt;
                $status = $obj->update();
            }
        }
        if ($status) {
            return ApiRes::success("Items added into cart.");
        } else {
            return ApiRes::error();
        }
    }
    public function qtyUpdate(Request $req): JsonResponse
    {
        $totalShippingAmt = null;
        // $plant = Plant::where('pid', $req->pid)->first();
        // $shippingAmt = ShippingCharges::where('category', $plant->category)->first()->amount;
        // if ($plant->unit == "KG" || $plant->unit == "Ltr" || $plant->unit == "Combo") {
        //     $totalShippingAmt = $plant->weight * $shippingAmt;
        // } else {
        //     $totalShippingAmt =  $shippingAmt;
        // }
        $plant = Plant::where('pid', $req->pid)->first();
        $shipping = ShippingCharges::where('category', $plant->category)->first();
        if ($shipping->category == "Product" && $plant->unit == "KG" || $plant->unit == "Ltr" || $plant->unit == "Combo") {
            $totalShippingAmt = $plant->weight * $shipping->amount;
        } else {
            $totalShippingAmt = $shipping->amount;
        }
        $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $req->pid)->first();
        $obj->qty = $req->qty;
        $obj->shipping_charges = $req->qty *  $totalShippingAmt;
        $status = $obj->update();
        if ($status) {
            return ApiRes::success("Item qty updated.");
        } else {
            return ApiRes::error();
        }
    }

    public function remove(Request $req): JsonResponse
    {
        $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $req->pid)->first();
        if ($obj->qty == 1) {
            $status = $obj->delete();
            if ($status) {
                return ApiRes::success("Item qty updated.");
            } else {
                return ApiRes::error();
            }
        } else {
            $obj->qty = $obj->qty -= 1;
            $status = $obj->update();
            if ($status) {
                return ApiRes::success("Item qty updated.");
            } else {
                return ApiRes::error();
            }
        }
    }

    public function delete(Request $req): JsonResponse
    {
        $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $req->pid)->first();
        $status = $obj->delete();
        if ($status) {
            return ApiRes::success("Item removed from cart.");
        } else {
            return ApiRes::error();
        }
    }
}
