@extends('admin.layouts.admin_layout')
@section('title', env('APP_NAME'))
@section('head')
@endsection


@section('main-content')

    <div class="admin-container">

        @php
            $tbx['tb'] = 1;
            $tbx['title'] = 'Orders List';
            $tbx['search-bar'] = true;
            $route_name = 'order';
            $dir_name = 'order';
            $dummy_image = asset('assets/img/other/order-list-2.png');
        @endphp
        @include('admin.includes.title-bar-I')

        <div class="cart__table">
            <table class="cart__table--inner">
                {!! Hpx::table_headings(['Date', 'Payment Id', 'Order Id', 'Total Amt', 'Status']) !!}
                <tbody class="cart__table--body" id="slider-list">
                    @foreach ($datalist as $data)
                        <tr class="cart__table--body__items">
                            <td class="cart__table--body__list">
                                <span class="fw-bold"> {{ Hpx::mydate_month($data->created_at) }}</span>
                            </td>
                            <td class="cart__table--body__list">
                                <a href="{{ url('admin/payment') . '/' . $data->payment_id }}"> {{ $data->payment_id }}</a>
                            </td>
                            <td class="cart__table--body__list">
                                {{ $data->order_id }}
                            </td>
                            <td class="cart__table--body__list">
                                <span class="fw-bold"> <span class="text-danger">₹</span> {{ $data->amount }}</span>
                            </td>
                            <td class="cart__table--body__list">
                                <span class="blink">
                                    {{ Str::upper($data->status) }}
                                </span>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="col-12 links-border">
                {!! Hpx::paginator($datalist) !!}
            </div>
        </div>
    </div>



@endsection

@section('script')
    <script type="text/javascript">
    
    </script>
@endsection

@section('style')
    <style type="text/css">
        .btn-stx {
            padding: 0.25rem 0.8rem;
            color: #0d6efd;
            font-size: 1.5rem;
            border: 0;
            border-radius: 3px;
        }

        .btn-placed {
            background-color: #1da85435;
            color: #1da854;
        }

        .btn-dispatched {
            background-color: #a86a1d35;
            color: #a8501d;
        }

        .btn-completed {
            color: #1da854;
        }

        .btn-cancelled {
            color: #db0101;
        }

        .btn-refunded {
            background-color: #99a81d35;
            color: #7f8117;
        }

        .btn-payment_pending {
            background-color: #1d95a835;
            color: #176481;
        }

        .btn-payment_failed {
            color: #db0101;
        }

        .edit-status {
            cursor: pointer;
        }

        .edit-status:hover {
            box-shadow: 2px 2px 3px #ddd;
        }

        .edit-status:active {
            box-shadow: 1px 1px 1px #ddd;
        }

        .modal-dialog .variant__size--value {
            width: 14rem;
        }

        .modal-dialog .variant__size--list {
            margin: 0;
        }

        .modal {
            background-color: #0000006b !important;
        }

        .payment-refresh:hover {
            color: #0d6efd;
            cursor: pointer;
        }

        .py-created {
            color: black;
        }

        .py-authorized {
            color: #072791;
        }

        .py-captured {
            color: #036d11;
        }

        .py-refunded {
            color: #6d6e03;
        }

        .py-failed {
            color: #a10000;
        }
    </style>
@endsection
