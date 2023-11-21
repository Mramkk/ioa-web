<?php

namespace App\Http\Controllers\Api\Razorpay;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\FirstBuy;
use App\Models\Morder;
use App\Models\Mpayment;
use App\Models\OrderedItem;
use App\Models\Plant;
use App\Models\Userdetail;
use Illuminate\Http\Request;
use Razorpay\Api\Api;

class ApiRazorpayController extends Controller
{
    public function genOrderId(Request $req)
    {
        $uid = auth()->user()->uid;
        $user = Userdetail::where('uid', $uid)->first();
        $api = new Api(env('MRAZORPAY_KEY'), env('MRAZORPAY_SECRET'));
        $receipt = uniqid();
        $orderData = [
            'receipt'         => $receipt,
            'amount'          => $req->amt * 100,
            'currency'        => 'INR'
        ];

        $orderRes = $api->order->create($orderData);
        $data = [
            'key_id' => env('MRAZORPAY_KEY'),
            'orderid' => $orderRes->id,
            'amount' => $orderRes->amount,
            'name' => $user->name,
            'email' => $user->email,
            'mobile' =>  "+91" . $user->mobile,
        ];
        if ($orderRes) {
            return ApiRes::mapData($data);
        } else {
            return ApiRes::error();
        }
    }
    public function payment(Request $req)
    {
        $orderid = "OGD000";
        $orderid = $orderid . Morder::max('id') + 1;
        $api = new Api(env('MRAZORPAY_KEY'), env('MRAZORPAY_SECRET'));
        $pay = $api->payment->fetch($req->payment_id);


        if ($pay->status == "failed" || $pay->captured == false) {
            $payment = new Mpayment();
            $payment->uid = auth()->user()->id;
            $payment->payment_id = $pay->id;
            $payment->order_id = $pay->order_id;
            $payment->email = $pay->email;
            $payment->contact = $pay->contact;
            $payment->amount = ($pay->amount / 100);
            $payment->method = $pay->method;
            $payment->currency = $pay->currency;
            $payment->status = $pay->status;
            $payment->captured = "0";
            $status = $payment->save();

            if ($status) {
                return ApiRes::failed('Payment failed ! Try again later .');
            } else {
                return ApiRes::error();
            }
        } elseif ($pay->status == "captured" && $pay->captured == true) {
            $payment = new Mpayment();
            $payment->uid = auth()->user()->id;
            $payment->payment_id = $pay->id;
            $payment->order_id = $pay->order_id;
            $payment->email = $pay->email;
            $payment->contact = $pay->contact;
            $payment->amount = ($pay->amount / 100);
            $payment->method = $pay->method;
            $payment->currency = $pay->currency;
            $payment->status = $pay->status;
            $payment->captured = "1";
            $status = $payment->save();
        }
        // Data Cart Table to  OrderedItem Table
        $items = Cart::where('uid', auth()->user()->id)->get();
        foreach ($items as $item) {
            $obj = new OrderedItem();
            $obj->uid = auth()->user()->id;
            $obj->orderid = $orderid;
            $obj->pid = $item->pid;
            $obj->coupon_code = $item->coupon_code;
            $obj->qty = $item->qty;
            $obj->shipping_charges = $item->shipping_charges;
            $status = $obj->save();
        }



        $couponCode = OrderedItem::where('uid', auth()->user()->id)->where('orderid', $orderid)->first()->coupon_code;
        if ($couponCode != null) {
            $coupon = Coupon::where('code', $couponCode)->where('status', '1')->first();
            $addressId = Address::where('uid', auth()->user()->uid)->where('active', '1')->first()->id;
            $obj = new Morder();
            $obj->uid = auth()->user()->id;
            $obj->orderid = $orderid;
            $obj->address_id = $addressId;
            $obj->payment_id = $req->payment_id;
            $obj->coupon_id = $coupon->id;
            $obj->total_amt = ($pay->amount / 100);
            $obj->status = "Confirmed";
            $status = $obj->save();
        } else {

            $addressId = Address::where('uid', auth()->user()->uid)->where('active', '1')->first()->id;
            $obj = new Morder();
            $obj->uid = auth()->user()->id;
            $obj->orderid = $orderid;
            $obj->address_id = $addressId;
            $obj->payment_id = $req->payment_id;
            $obj->total_amt = ($pay->amount / 100);
            $obj->status = "Confirmed";
            $status = $obj->save();
        }

        // if ($odItem != null) {
        //     $coupon = Coupon::where('code', $odItem->coupon_code)->where('status', '1')->first();
        // }
        // if($coupon != null){

        // }

        // $addressId = Address::where('uid', auth()->user()->uid)->where('active', '1')->first()->id;
        // $obj = new Morder();
        // $obj->uid = auth()->user()->id;
        // $obj->orderid = $orderid;
        // $obj->address_id = $addressId;
        // $obj->payment_id = $req->payment_id;
        // $obj->coupon_id = $coupon->id;
        // $obj->total_amt = ($pay->amount / 100);
        // $obj->status = "Confirmed";
        // $status = $obj->save();

        $status = Cart::where('uid', auth()->user()->id)->delete();
        if ($status) {
            return ApiRes::success('Payment Successfully !');
        } else {
            return ApiRes::error();
        }
    }
}
