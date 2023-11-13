<?php

namespace App\Http\Controllers\Admin\Payment;

use App\Http\Controllers\Controller;
use App\Models\Mpayment;
use Illuminate\Http\Request;

class AdminPaymentController extends Controller
{
    public function index(Request $req)
    {
        $datalist =  Mpayment::where('payment_id', $req->id)->first();
        return view('admin.payment.index', compact('datalist'));
    }

    public function mpayments(Request $req) {
        if ($req->q == null && $req->date == null) {
            $datalist = Mpayment::latest()->paginate(10);
            return view('admin.payment.mpayments', compact('datalist'));
        } elseif ($req->q != null) {
            $datalist = Mpayment::orwhere('order_id', 'LIKE', '%' . $req->q . '%')->orwhere('payment_id', 'LIKE', '%' . $req->q . '%')->paginate(10);
            return view('admin.payment.mpayments', compact('datalist'));
        } elseif ($req->date != null) {
            $datalist = Mpayment::whereDate('created_at', '=', date($req->date))->paginate(10);
            return view('admin.payment.mpayments', compact('datalist'));
        }
    }
}
