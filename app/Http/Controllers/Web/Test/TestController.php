<?php

namespace App\Http\Controllers\Web\Test;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
    {
        return view('email');
    }
}
