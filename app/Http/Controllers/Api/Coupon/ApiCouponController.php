<?php

namespace App\Http\Controllers\Api\Coupon;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Coupon;
use Illuminate\Http\Request;

class ApiCouponController extends Controller
{
    public function data()
    {
        $data = Coupon::where('status', '1')->get();
        return  ApiRes::data($data);
    }
    public function apply(Request $req)
    {
        $coupon =  Coupon::where('code', $req->coupon_code)->first();
        $status = Cart::where('uid', auth()->user()->id)->update([
            "coupon_code" => $coupon->code
        ]);

        if ($status) {
            return ApiRes::success('Coupon apply successfully !');
        } else {
            return ApiRes::error();
        }
    }
}
