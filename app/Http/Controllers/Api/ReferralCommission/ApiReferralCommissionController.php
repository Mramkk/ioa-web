<?php

namespace App\Http\Controllers\Api\ReferralCommission;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\ReferralCommission;
use Illuminate\Http\Request;

class ApiReferralCommissionController extends Controller
{
    public function data()
    {
        $data = ReferralCommission::where('apply', '0')->where('status', '1')->latest()->get();
        return ApiRes::data($data);
    }
    public function apply(Request $req)
    {
        $rfc = ReferralCommission::where('id', $req->id)->where('uid', auth()->user()->id)->where('apply', '0')->first();
        if ($rfc != null) {
            $rfc->status = '0';
            $rfc->apply = '1';
            $status = $rfc->save();
            $status =  Cart::where('uid', auth()->user()->id)->update(['referral_com_id' => $req->id]);
            if ($status) {
                return ApiRes::success("Apply successfully !");
            } else {
                return ApiRes::error();
            }
        } else {
            return ApiRes::error();
        }
    }
}
