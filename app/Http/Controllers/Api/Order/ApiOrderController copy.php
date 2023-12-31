<?php

namespace App\Http\Controllers\Api\Order;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Models\Morder;
use App\Models\OrderedItem;
use App\Models\Plant;
use App\Models\PlantImg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ApiOrderController extends Controller
{
    public function data()
    {
        $datalist = Morder::where('uid', auth()->user()->id)->latest()->get();
        $order = collect([]);
        foreach ($datalist as $data) {
            $address = Address::where('id', $data->address_id)->first();
            $items = OrderedItem::where('orderid', $data->orderid)->get();
            foreach ($items as $item) {

                $plant = Plant::where('pid', $item->pid)->first();
                $item['plant'] = $plant;
                $img = PlantImg::where('pid', $item->pid)->where('slno', '1')->where('type', 'md')->first();
                $plant['img'] = $img;
            }
            $data['address'] = $address;
            $data['items'] = $items;


            $order->push($data);
        }

        return ApiRes::data($order);
    }
    public function byId(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'orderid' => 'required|string|max:255',

        ]);
        if ($validator->fails()) {
            $errors = $validator->errors();
            if ($errors->first('orderid')) {
                return ApiRes::failed($errors->first('orderid'));
            }
        }

        $datalist = Morder::where('uid', auth()->user()->id)->where('orderid', $req->orderid)->get();
        $order = collect([]);
        foreach ($datalist as $data) {
            $address = Address::where('id', $data->address_id)->first();
            $items = OrderedItem::where('orderid', $data->orderid)->get();
            foreach ($items as $item) {

                $plant = Plant::where('pid', $item->pid)->first();
                $item['plant'] = $plant;
                $img = PlantImg::where('pid', $item->pid)->where('slno', '1')->where('type', 'md')->first();
                $plant['img'] = $img;
            }
            $data['address'] = $address;
            $data['items'] = $items;


            $order->push($data);
        }

        return ApiRes::data($order);
    }
}
