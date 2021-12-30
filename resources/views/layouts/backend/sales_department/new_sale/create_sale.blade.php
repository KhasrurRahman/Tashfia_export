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
            width: 55px;
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

        .qty {
            width: 50%;
        }


    </style>
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">

    <style>
        .select2-container {
            width: 90% !important;
        }

    </style>
@endpush
@section('main_menu', 'HOME')
@section('active_menu', 'New Sales')
@section('link', route('admin.adminDashboard'))
@section('content')

    <div class="card" style="margin-bottom: 10px">
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label for="product_id">Select Customer</label>
                    <div class="input-group input-group-button">
                        <select class="form-control select2" name="customer_id" id="customer_id">
                            <option value="">Select</option>
                            @foreach ($customers as $data)
                                <option value="{{ $data->id }}">{{ $data->name }} - ({{ $data->personal_phone }})
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
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="input-group" style="margin-bottom: 1px">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-book-open"></i></label>
                            </span>

                            <input type="text" name="country_name" id="country_name" class="form-control input-lg"
                                   placeholder="Item name/Barcode/Item code" autocomplete="off"/>
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
                            <th>Chalan No</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
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
                            <ul class="list-group">
                                <li class="list-group-item">Quantity: <span id="total_quantity">0</span></li>
                                <li class="list-group-item">Grand Total: <span id="grand_total">0</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row justify-content-center">
        <button class="btn btn-lg btn-block btn-primary col-md-6 mb-10" onclick="show_payment_history()">Previous Payments
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
            <div class="row justify-content-center" id="multiple_payment_model">
                <div class="col-md-8 p-3 m-2" style="background: #6b279b52;border-radius: 1%" id="payment_mode_section">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="product_id">Amount</label>
                                <div class="input-group">
                                    <input type="number" class="form-control payment_amount" name="payment_amount" id="sub_total" required>
                                </div>
                                <span id="error_sub_total" class="text-red error_field"></span>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="product_id">Payment Type</label>
                                <select class="form-control select2 payment_type" name="payment_type" id="payment_type" onchange="cheque_date_input(this)">
                                    <option value="cache ">cache</option>
                                    <option value="card ">Card</option>
                                    <option value="Bkash">Bkash</option>
                                    <option value="Cheque">Cheque</option>
                                </select>
                                <span id="error_subtotal" class="text-red error_field "></span>
                            </div>
                        </div>

                        <div class="col-12" id="check_section" style="display: none;border: 1px solid">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="product_id">cheque Number</label>
                                        <div class="input-group">
                                            <input type="number" class="form-control cheque_number" name="cheque_number">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="product_id">Date</label>
                                        <div class="input-group">
                                            <input type="date" class="form-control cheque_date" name="cheque_date">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="product_id">Remarks</label>
                                <div class="input-group">
                                    <textarea name="remarks" id="remarks" style="width:100%" class="remarks"></textarea>
                                </div>
                                <span id="error_remarks" class="text-red error_field"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="card-footer">
            <div class="row justify-content-center">
                <button type="button" class="btn btn-warning btn-lg col-md-6" onclick="add_payment_mode()"><i
                            class="ik ik-plus-square"></i>Add Payment Mode
                </button>
            </div>
        </div>
    </div>


    <div class="row justify-content-center">
        <button class="btn btn-success col-md-4" onclick="store_sales_data()">Save</button>
        <button class="btn btn-danger col-md-4" onclick="location.reload();">Cancel</button>
    </div>



    @include('layouts.backend.sales_department.customer_details_modal')
    @include('layouts.backend.sales_department.new_sale.sales_details_model')
    @include('layouts.backend.sales_department.new_sale.previous_payment_history_model')
    @include('layouts.backend.sales_department.new_sale.add_walk_in_customer')

@endsection
@push('js')
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.sales_department.new_sale.create_sale_js')
@endpush
