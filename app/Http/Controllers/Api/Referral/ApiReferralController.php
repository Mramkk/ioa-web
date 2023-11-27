<?php

namespace App\Http\Controllers\Api\Referral;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Referral;
use App\Models\ReferralCommission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ApiReferralController extends Controller
{
    public function data()
    {
        $data = Referral::where('uid', auth()->user()->id)->latest()->get();
        return ApiRes::data($data);
    }
    public function save(Request $req)
    {

        $validator = Validator::make($req->all(), [
            'name' => 'required|string|max:255',
            'phone' => 'required|string|unique:referrals|max:255',


        ]);
        if ($validator->fails()) {
            $errors = $validator->errors();
            if ($errors->first('name')) {
                return ApiRes::failed($errors->first('name'));
            } elseif ($errors->first('phone')) {
                return ApiRes::failed($errors->first('phone'));
            }
        }
        $rf = new Referral();
        $rf->uid = auth()->user()->id;
        $rf->name = $req->name;
        $rf->phone = $req->phone;
        $status = $rf->save();

        $rf = Referral::where('uid', auth()->user()->id)->where('status', '1')->latest()->take(5)->get();
        if ($rf->count() == 5) {
            $status = Referral::where('uid', auth()->user()->id)->where('status', '1')->latest()->take(5)->update(['status' => '0']);
            $rfc = new ReferralCommission();
            $rfc->uid = auth()->user()->id;
            $rfc->discount = 10;
            $status = $rfc->save();
        }
        if ($status) {
            return ApiRes::success("Data save successfully !");
        } else {
            return ApiRes::error();
        }
    }
}
