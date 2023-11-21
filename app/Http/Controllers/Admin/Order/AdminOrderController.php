<?php

namespace App\Http\Controllers\Admin\Order;

use App\Helpers\Classes\EasyData;
use App\Http\Controllers\Controller;
use App\Mail\SendInvoice;
use App\Models\Address;
use App\Models\Morder;
use App\Models\OrderedItem;
use App\Models\Plant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use PDF;

class AdminOrderController extends Controller
{
    public function index(Request $req)
    {
        if ($req->q == null && $req->date == null) {
            $datalist = Morder::latest()->paginate(5);
            return view('admin.morder.index', compact('datalist'));
        } elseif ($req->q != null) {
            $datalist = Morder::orwhere('orderid', 'LIKE', '%' . $req->q . '%')->orwhere('payment_id', 'LIKE', '%' . $req->q . '%')->paginate(5);
            return view('admin.morder.index', compact('datalist'));
        } elseif ($req->date != null) {
            $datalist = Morder::whereDate('created_at', '=', date($req->date))->paginate(10);
            return view('admin.morder.index', compact('datalist'));
        }
    }

    public function byId(Request $req)
    {
        if($req->invoice == 'download')
        {
            $datalist = Morder::where('orderid', $req->id)->first();
            $address = Address::where('id', $datalist->address_id)->first();
            $items = OrderedItem::where('orderid', $req->id)->get();
            $data = collect([]);
            foreach ($items as $item) {
                $plant = Plant::where('pid', $item->pid)->first();
                $item['plant'] = $plant;
                $data->push($item);
                $datalist['items'] = $data;
            }
            $datalist['address'] = $address;

            $pdf = PDF::loadView('admin.morder.invoice', compact('datalist'));
            return $pdf->download('INVOICE-' . $datalist->orderid . '.pdf');
        }

        if($req->invoice == 'SEND_INVOICE')
        {
            $x = new EasyData;
            $x->request = $req;
            $datalist = Morder::where('orderid', $req->id)->first();
            $address = Address::where('id', $datalist->address_id)->first();
            $items = OrderedItem::where('orderid', $req->id)->get();
            $data = collect([]);
            foreach ($items as $item) {
                $plant = Plant::where('pid', $item->pid)->first();
                $item['plant'] = $plant;
                $data->push($item);
                $datalist['items'] = $data;
            }
            $datalist['address'] = $address;

            $pdf_name = $datalist->orderid . '.pdf';
            $pdf = PDF::loadView('admin.morder.invoice', compact('datalist'))->output();
            Mail::to('jisvishalkumar@gmail.com')->send(new SendInvoice(compact('order', 'pdf', 'pdf_name')));
            $x->status(true);
            $x->message('Invoice has been sent.');
            return $x->json_output();

            $pdf = PDF::loadView('admin.morder.invoice', compact('datalist'));
            return $pdf->download('INVOICE-' . $datalist->orderid . '.pdf');
        }
        

        if (!empty($req->invoice)) {
            $datalist = Morder::where('orderid', $req->id)->first();
            $address = Address::where('id', $datalist->address_id)->first();
            $items = OrderedItem::where('orderid', $req->id)->get();
            $data = collect([]);
            foreach ($items as $item) {
                $plant = Plant::where('pid', $item->pid)->first();
                $item['plant'] = $plant;
                $data->push($item);
                $datalist['items'] = $data;
            }
            $datalist['address'] = $address;

            return  view('admin.morder.invoice_data', compact('datalist'));
        }

        $datalist = Morder::where('orderid', $req->id)->first();
        $address = Address::where('id', $datalist->address_id)->first();
        $items = OrderedItem::where('orderid', $req->id)->get();
        $data = collect([]);
        foreach ($items as $item) {
            $plant = Plant::where('pid', $item->pid)->first();
            $item['plant'] = $plant;
            $data->push($item);
            $datalist['items'] = $data;
        }
        $datalist['address'] = $address;

        return  view('admin.morder.details', compact('datalist'));
    }
}
