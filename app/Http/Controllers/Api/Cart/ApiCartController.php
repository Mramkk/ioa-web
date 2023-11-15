<?php

namespace App\Http\Controllers\Api\Cart;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Cart;
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
        $obj = Cart::Where('uid', auth()->user()->id)->with('plant')->with('img')->get();
        return ApiRes::data($obj);
    }


    public function add(Request $req)
    {
        $totalShippingAmt = null;
        $plant = Plant::where('pid', $req->pid)->first();
        $shippingAmt = ShippingCharges::where('category', $plant->category)->first()->amount;
        if ($plant->unit == "KG" || $plant->unit == "Ltr" || $plant->unit == "Combo") {
            $totalShippingAmt = $plant->weight * $shippingAmt;
        } else {
            $totalShippingAmt =  $shippingAmt;
        }

        $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $req->pid)->first();
        if ($obj == null) {
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
        // $totalShippingAmt = null;
        // $plant = Plant::where('pid', $req->pid)->first();
        // $shipping = ShippingCharges::where('category', $plant->category)->first();
        // if ($plant->category == "Product") {
        //     $totalShippingAmt = $plant->weight * $shipping->amount;
        // } else {
        //     $totalShippingAmt = $shipping->amount;
        // }

        // return ApiRes::success($totalShippingAmt);
        $status = null;
        foreach ($req->pid as $pid) {
            $totalShippingAmt = null;
            $plant = Plant::where('pid', $pid)->first();
            $shipping = ShippingCharges::where('category', $plant->category)->first();
            if ($shipping->category == "Product") {
                $totalShippingAmt = $plant->weight * $shipping->amount;
            } else {
                $totalShippingAmt = $shipping->amount;
            }

            $obj = Cart::Where('uid', auth()->user()->id)->Where('pid', $pid)->first();
            if ($obj == null) {
                $obj = new Cart();
                $obj->uid = auth()->user()->id;
                $obj->pid = $pid;
                $obj->shipping_charges = $totalShippingAmt;
                $status = $obj->save();
            } else {
                $obj->qty = $obj->qty += 1;
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
        $plant = Plant::where('pid', $req->pid)->first();
        $shippingAmt = ShippingCharges::where('category', $plant->category)->first()->amount;
        if ($plant->unit == "KG" || $plant->unit == "Ltr" || $plant->unit == "Combo") {
            $totalShippingAmt = $plant->weight * $shippingAmt;
        } else {
            $totalShippingAmt =  $shippingAmt;
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
