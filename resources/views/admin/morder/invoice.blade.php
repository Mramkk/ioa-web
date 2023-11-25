@php
    // $cart_id = $datalist->first()->orderid;
    $totalShippingAmt = null;
    $subTotalAmt = null;
    $totalAmt = null;
@endphp
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Invoice</title>

    <style type="text/css">
        @font-face {
            font-family: SourceSansPro;
            src: url({{ asset('assets/invoice/SourceSansPro-Regular.ttf') }});
        }

        .clearfix:after {
            content: "";
            display: table;
            clear: both;
        }

        a {
            color: #0087C3;
            text-decoration: none;
        }

        body {
            position: relative;
            max-width: 21cm;
            height: 29.7cm;
            margin: 0 auto;
            color: #2a2a2a;
            background: #FFFFFF;
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-family: SourceSansPro;
        }

        header {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #AAAAAA;
        }

        #logo {
            float: left;
            margin-top: 8px;
        }

        #logo img {
            height: 70px;
        }

        #company {
            float: right;
            text-align: right;
        }


        #details {
            margin-bottom: 50px;
        }

        #client {
            padding-left: 6px;
            border-left: 6px solid #0087C3;
            float: left;
        }

        #client .to {
            color: #777777;
        }

        h2.name {
            font-size: 1.4em;
            font-weight: normal;
            margin: 0;
        }

        #invoice {
            float: right;
            text-align: right;
        }

        #invoice h1 {
            color: #0087C3;
            font-size: 1.8em;
            line-height: 1em;
            font-weight: normal;
            margin: 0 0 10px 0;
        }

        #invoice .date {
            font-size: 1.1em;
            color: #2a2a2a;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px;
        }

        table th,
        table td {
            padding: 10px;
            background: #EEEEEE;
            text-align: center;
            border-bottom: 1px solid #FFFFFF;
        }

        table th {
            font-weight: bold !important;
            white-space: nowrap;
        }

        table td {
            text-align: right;
        }

        table td h3 {
            color: #363636;
            font-size: 1.2em;
            font-weight: normal;
            margin: 0 0 0.2em 0;
        }

        table .no {
            text-align: center;
            color: #FFFFFF;
            font-size: 1.4em;
            background: #1da854;
        }

        table .desc {
            text-align: left;
        }

        table .unit {
            background: #DDDDDD;
        }

        table .discount {}

        table .qty {
            text-align: center;
        }

        table .total {
            background: #1da854;
            color: #FFFFFF;
        }

        table tbody .total {
            text-align: center;
        }

        table td {
            font-size: 1.15em;
        }

        table tbody tr:last-child td {
            border: none;
        }

        table tfoot td {
            padding: 10px 20px;
            background: #FFFFFF;
            border-bottom: none;
            font-size: 1.1em;
            white-space: nowrap;
            border-top: 1px solid #AAAAAA;
        }

        table tfoot tr:first-child td {
            border-top: none;
        }

        table tfoot tr:last-child td {
            color: #1da854;
            font-size: 1.4em;
            border-top: 1px solid #1da854;

        }

        table tfoot tr td:first-child {
            border: none;
        }

        #thanks {
            font-size: 2em;
            margin-bottom: 20px;
        }

        #notices {
            padding-left: 6px;
            border-left: 6px solid #0087C3;
        }

        #notices .notice {
            font-size: 1.2em;
        }

        footer {
            color: #777777;
            width: 100%;
            height: 30px;
            position: absolute;
            bottom: 0;
            border-top: 1px solid #AAAAAA;
            padding: 8px 0;
            text-align: center;
        }

        @media print {
            .no {
                color: black !important;
            }

            .total {
                color: #2a2a2a !important;
                text-align: right !important;
                padding-right: 20px !important;
            }
        }
    </style>

</head>

<body>
    <header class="clearfix">
        <div id="logo">
            <img src="{{ asset('assets/invoice/logo.png') }}">
        </div>
        <div id="company">
            <h2 class="name">Innovative Organic Agri India</h2>
            <div>Demotand, Hazaribagh – JH 825301</div>
            <div>GST NO : 20AAGFI4906D1ZZ</div>
            <div><a href="mailto:md@innovativeorganicagri.com">md@innovativeorganicagri.com</a></div>
        </div>
        </div>
    </header>
    <main>
        <div id="details" class="clearfix">
            <div id="client">
                <div class="to">INVOICE TO:</div>
                <h2 class="name" style="text-transform: capitalize;">{{ $datalist->first()->address->name }}</h2>
                <div class="address">
                    {{ $datalist->first()->address->address_line_1 }}<br>
                    {{ $datalist->first()->address->address_line_2 }}<br>
                    {{ $datalist->first()->address->city }}, {{ $datalist->first()->address->state }}<br>
                    {{ $datalist->first()->address->pincode }}<br>
                </div>
                <!-- <div class="email"><a href="mailto:john@example.com">john@example.com</a></div> -->
            </div>
            <div id="invoice">
                <h1>INVOICE #{{ $datalist->first()->orderid }}</h1>
                <div class="date">Date of Invoice: {{ date('d/m/Y') }}</div>
                <div class="date">Order Date: {{ date('d/m/Y', strtotime($datalist->first()->created_at)) }}</div>
            </div>
        </div>
        <table border="0" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th class="no">#</th>
                    <th class="desc">ITEM NAME</th>
                    <th class="unit">UNIT PRICE</th>
                    <th class="discount">DISCOUNT</th>
                    <th class="qty">QUANTITY</th>
                    <th class="total">TOTAL</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($datalist->first()->items as $sn => $data)
                    @php
                        $totalShippingAmt += $data->shipping_charges;
                        $subTotalAmt += $data->plant->selling_price * $data->qty;
                        $totalAmt += $subTotalAmt + $totalShippingAmt;
                    @endphp

                    <tr>
                        <td class="no">{{ $sn += 1 }}</td>
                        <td class="desc">{{ $data->plant->title }}</td>
                        <td class="unit">{{ $data->plant->regular_price }}</td>
                        <td class="discount">
                            {{ number_format((float) ($data->plant->regular_price - $data->plant->selling_price), 2, '.', '') }}
                        </td>
                        <td class="qty">{{ $data->qty }}</td>
                        <td class="total">{{ $data->plant->selling_price * $data->qty }}</td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2"></td>
                    <td colspan="3">SUBTOTAL</td>
                    <td>+ ₹ {{ $subTotalAmt }}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td colspan="3">Total Shipping Charges </td>
                    <td>+ ₹ {{ $totalShippingAmt }}</td>
                </tr>
                <tr>

                    @if ($datalist->first()->firstBuy->count() > 0)
                        <td colspan="2"></td>
                        <td colspan="3">First Buy 20 % Discount </td>
                        <td>- ₹ {{ $totalAmt * ($datalist->first()->firstBuy->first()->discount / 100) }}</td>
                    @elseif ($datalist->first()->coupon->count() > 0)
                        <td colspan="2"></td>
                        <td colspan="3">Coupon {{ $datalist->first()->coupon->first()->discount }} % Discount </td>
                        <td>- ₹ {{ $totalAmt * ($datalist->first()->coupon->first()->discount / 100) }}</td>
                    @elseif ($datalist->first()->referral->count() > 0)
                        <td colspan="2"></td>
                        <td colspan="3">Referral {{ $datalist->first()->referral->first()->discount }} % Discount
                        </td>
                        <td>- ₹ {{ $totalAmt * ($datalist->first()->referral->first()->discount / 100) }}</td>
                    @endif

                </tr>

                <tr>
                    <td colspan="2"></td>
                    <td colspan="3">GRAND TOTAL</td>
                    <td> ₹ {{ $datalist->first()->total_amt }}</td>
                </tr>
            </tfoot>
        </table>
        <div id="thanks">Thank you!</div>
        <div id="notices">
            <div class="notice">for shopping with IOA. hope to see you soon again.</div>
        </div>
    </main>
    <footer>
        Invoice was created on a computer and is valid without the signature and seal.
    </footer>
</body>

</html>
