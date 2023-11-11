<?php

namespace App\Http\Controllers\Api\Product;

use App\Helpers\ApiRes;
use App\Http\Controllers\Controller;
use App\Models\Plant;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ApiProductController extends Controller
{
    public function data()
    {
        $data = Plant::where('category', 'Product')->latest()->with('imglg')->with('wishlist', function ($wishlist) {
            return $wishlist->where('uid', auth()->user()->id)->get();
        })->get();
        return ApiRes::data($data);
    }
    public function byId(Request $req)
    {
        $data = Plant::where('category', 'Product')->where('id', $req->id)->with('imglg')->with('wishlist', function ($wishlist) {
            return $wishlist->where('uid', auth()->user()->id)->get();
        })->get();
        return ApiRes::data($data);
    }
    public function plantSubcategory()
    {
        $data = SubCategory::Where('category', 'Plant')->with('imglg')->get();
        return ApiRes::data($data);
    }
}
