@extends('layouts.backend.partial.app')
@section('title', 'New Sales')
@push('css')
    <style>
        table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: 1px solid #cdcdcd;
        }

        table th,
        table td {
            padding: 10px;
            text-align: left;
        }

        .qty {
            text-align: center;
        }


        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }


        #dsTable td {
            text-align: center;
            vertical-align: middle;
        }

        /*.qty {*/
        /*    width: 100%%;*/
        /*}*/

        .list-group {
            max-height: 300px;
            margin-bottom: 10px;
            overflow: scroll;
            -webkit-overflow-scrolling: touch;
        }

    </style>
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">

    <style>
        .customer_select2 .select2-container {
            width: 90% !important;
        }

    </style>
@endpush
@section('main_menu', 'HOME')
@section('active_menu', 'New Sales')
@section('link', route('admin.adminDashboard'))
@section('content')
    <div class="alert alert-danger text-center" role="alert">
        Be careful to create. You cant not edit / delete after create this
    </div>
    <div class="card" style="margin-bottom: 10px">
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label for="product_id">Select Customer</label>
                    <div class="input-group input-group-button customer_select2">
                        <select class="form-control select2" name="customer_id" id="customer_id">
                            <option value="">Select</option>
                            @foreach ($customers as $data)
                                <option value="{{ $data->id }}">{{ $data->name }} - (ID: {{ $data->id }})
                                </option>
                            @endforeach
                        </select>
                        <div class="input-group-append">
                            <a href="#add_wal_in_customer" data-toggle="modal" class="btn btn-primary" type="button"><i class="ik ik-user-plus"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="product_id">Sales Date</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-calendar"></i></label>
                            </span>
                            <input type="date" class="form-control" name="sales_date" id="sales_date"
                                   value="{{ date('Y-m-d') }}">
                        </div>
                        <span id="error_sales_date" class="text-red error_field"></span>
                    </div>
                </div>

                <div class="col-md-6" style="display: none" id="customer_details">
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="product_id">Reference</label>
                        <div class="input-group input-group-button">
                            <select class="form-control select2" name="sales_executive_id" id="sales_executive_id">
                                <option value="">Select</option>
                                @foreach ($sales_executive as $data)
                                    <option value="{{ $data->id }}">{{ $data->name }}</option>
                                @endforeach
                            </select>
                            <span id="error_sales_executive_id" class="text-red error_field"></span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="card" style="margin-bottom:10px;">
        <div class="card-body">

            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="form-group">
                        <div class="input-group" style="margin-bottom: 1px">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-book-open"></i></label>
                            </span>

                            <input type="text" name="country_name" id="country_name" class="form-control input-lg"
                                   placeholder="Item name/Barcode" autocomplete="off" autofocus/>
                        </div>

                        <div id="countryList">
                        </div>

                        <span id="error_reference_number" class="text-red error_field"></span>
                    </div>
                </div>
                <div class="col-md-12">
                    <table id="dsTable">
                        <thead>
                        <tr style="background:#6b279b;color:white">
                            <th>Item name</th>
                            <th>Stock(KG)</th>
                            <th>Quantity(KG)</th>
                            <th>Quantity(Pound)</th>
                            <th>Role</th>
                            <th>Chalan no</th>
                            <th>Unit Price(kg)</th>
                            <th>Unit Price(pound)</th>
                            <th>Total Price (Tk)</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>

                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <ul class="list-group" style="font-size: 20px;font-weight: bold;overflow: auto">
                                <li class="list-group-item">Quantity(KG): <span id="total_quantity">0</span></li>
                                <li class="list-group-item">Grand Total: <span id="grand_total">0</span></li>
                                <div class="form-group">
                                    <label for="product_id"></label>
                                    <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-truck"></i></label>
                            </span>
                                        <input type="number" placeholder="labour bill" class="form-control" name="labour_bill" id="labour_bill" onkeyup="show_total_grand_total()">
                                    </div>
                                    <span id="error_sales_date" class="text-red error_field"></span>
                                </div>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row justify-content-center">
        <button class="btn btn-lg btn-block btn-primary col-md-6 mb-10" onclick="show_payment_history()" id="total_previous_due">Previous Payments
            Information:
        </button>
    </div>



    {{--    payment section--}}

    <div class="card">
        <div class="card-header">
            <div class="card-title">
                <h3><b>Payments:</b></h3>
            </div>

        </div>
        <div class="card-body">
            @include('layouts.backend.purchase.bank_card')

        </div>

{{--        <div class="card-footer">--}}
{{--            <div class="row justify-content-center">--}}
{{--                <button type="button" class="btn btn-warning btn-lg col-md-6" onclick="add_payment_mode()"><i--}}
{{--                            class="ik ik-plus-square"></i>Add Payment Mode--}}
{{--                </button>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>


    <div class="row justify-content-center">
        <button class="btn btn-success col-md-4" onclick="store_sales_data()" id="form_submission_button">Save</button>
        <button class="btn btn-danger col-md-4" onclick="location.reload();">Reload</button>
    </div>



    @include('layouts.backend.sales_department.customer_details_modal')
    @include('layouts.backend.sales_department.new_sale.sales_details_model')
    @include('layouts.backend.sales_department.new_sale.previous_payment_history_model')
    @include('layouts.backend.sales_department.new_sale.add_walk_in_customer')

@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.sales_department.new_sale.create_sale_js')
@endpush
