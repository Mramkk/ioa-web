<?php

namespace App\Http\Controllers\Admin\Coupon;

use App\Http\Controllers\Controller;
use App\Models\MasterFirstBuy;
use Illuminate\Http\Request;
use App\Helpers\ApiRes;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class MasterFirstBuyController extends Controller
{
    private $path = "public/img/first_buy/";
    public function index(Request $req)
    {
        $datalist = null;
        if ($req->q != null) {
            $datalist = MasterFirstBuy::orWhere('slider_name', 'LIKE', '%' . $req->q . '%')
                ->orWhere('title', 'LIKE', '%' . $req->q . '%');
            return view('admin.first_buy.index', compact('datalist'));
        } else {
            $datalist =  MasterFirstBuy::orderBy('id', 'DESC');
            $datalist = $datalist->paginate(50);
            return view('admin.first_buy.index', compact('datalist'));
        }
    }
    public function create()
    {
        return view('admin.first_buy.create');
    }
    public function save(Request $req)
    {
        $req->validate([

            'title' => 'required|string|max:225',
            'discount' => 'required|numeric|between:1,50',

        ]);
        $obj = new MasterFirstBuy();
        $obj->uid = auth()->user()->id;
        $obj->title = $req->title;
        $obj->description = $req->description;
        $obj->discount = $req->discount;
        $status = $obj->save();

        if ($req->hasFile('image')) {
            $req->validate([
                'image' => 'required|image|mimes:jpeg,jpg,png',

            ]);

            $picName1 =  uniqid() . ".webp";
            $picName2 =  uniqid() . ".webp";
            $imgSm = $this->path . $picName1;
            $imgLg = $this->path . $picName2;
            Image::make($req->image->getRealPath())->resize('480', '360')->save($imgSm);
            Image::make($req->image->getRealPath())->resize('640', '480')->save($imgLg);

            $obj->img_sm =  $imgSm;
            $obj->img_lg =  $imgLg;
            $status = $obj->save();
        }

        if ($status) {
            return redirect()->back()->with('success', 'Data saved successfully !');
        } else {
            return redirect()->back()->with('error', 'Error, try again later.');
        }
    }
    public function  edit(Request $req)
    {
        $data = MasterFirstBuy::where('id', $req->id)->first();
        return view('admin.first_buy.edit', compact('data'));
    }
    public function  update(Request $req)
    {
        $obj = MasterFirstBuy::where('id', $req->id)->first();
        $obj->uid = auth()->user()->id;
        $obj->title = $req->title;
        $obj->description = $req->description;
        $obj->discount = $req->discount;
        $status = $obj->update();

        if ($req->hasFile('image')) {
            $req->validate([
                'image' => 'required|image|mimes:jpeg,jpg,png',

            ]);

            if ($obj->img_sm != null) {
                File::delete($obj->img_sm);
            }
            if ($obj->img_lg != null) {
                File::delete($obj->img_lg);
            }

            $picName1 =  uniqid() . ".webp";
            $picName2 =  uniqid() . ".webp";
            $imgSm = $this->path . $picName1;
            $imgLg = $this->path . $picName2;
            Image::make($req->image->getRealPath())->resize('480', '360')->save($imgSm);
            Image::make($req->image->getRealPath())->resize('640', '480')->save($imgLg);

            $obj->img_sm =  $imgSm;
            $obj->img_lg =  $imgLg;
            $status = $obj->update();
        }

        if ($status) {
            return redirect()->back()->with('success', 'Data updated successfully !');
        } else {
            return redirect()->back()->with('error', 'Error, try again later.');
        }
    }
    public function status(Request $req)
    {
        $obj = MasterFirstBuy::Where('id', $req->id)->first();
        if ($obj->status == '1') {
            $obj->status = "0";
            $status = $obj->update();
            if ($status) {
                return  ApiRes::success('Status Changed Successfully ! ');
            } else {
                return  ApiRes::error();
            }
        } else {
            $obj->status = "1";
            $status = $obj->update();
            if ($status) {
                return  ApiRes::success('Status Changed Successfully ! ');
            } else {
                return  ApiRes::error();
            }
        }
    }

    public function delete(Request $req)
    {
        $obj = MasterFirstBuy::where('id', $req->id)->first();
        if ($obj->img_sm != null) {
            File::delete($obj->img_sm);
        }
        if ($obj->img_lg != null) {
            File::delete($obj->img_lg);
        }
        $status = MasterFirstBuy::where('id', $req->id)->delete();
        if ($status) {

            return  ApiRes::success('Data Deleted Successfully ! ');
        } else {
            return  ApiRes::error();
        }
    }
}
