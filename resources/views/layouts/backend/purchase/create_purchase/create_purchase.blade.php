@extends('layouts.backend.partial.app')
@section('title', 'New Purchase')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu', 'HOME')
@section('active_menu', 'New Purchase')
@section('link', route('admin.adminDashboard'))
@section('content')
    <div class="alert alert-danger text-center" role="alert">
        Be careful to create. You cant not edit / delete after create this
    </div>
    <div class="row justify-content-center">

        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    Purchase Information
                </div>

                <div class="card-body">
                    <div class="form-group">
                        <label for="product_id">Select Product</label>
                        <br>
                        <select class="form-control select2" name="product_id" id="product_id">
                            <option value="">Select</option>
                            @foreach($products as $data)
                                <option value="{{$data->id}}">{{$data->chalan_no}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_product_id" class="text-red error_field"></span>
                    </div>

                    <table class="table table-dark table-bordered" style="display: none" id="product_details_show">
                        <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Card no</th>
                            <th scope="col">Batch no</th>
                            <th scope="col">Fabric Type</th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td id="details_chalan_no"></td>
                            <td id="details_card_no"></td>
                            <td id="details_batch_no"></td>
                            <td id="details_fabric_type"></td>
                        </tr>

                        </tbody>
                    </table>

                    <br>

                    <div class="form-group">
                        <label for="product_id">Select Supplier</label>
                        <br>
                        <select class="form-control select2" name="supplier_id" id="supplier_id">
                            <option value="">Select</option>
                            @foreach($supplier as $data)
                                <option value="{{$data->id}}">{{$data->name}} (Company: {{$data->company->company_name}})</option>
                            @endforeach
                        </select>
                        <span id="Error_status_supplier_id" class="text-red error_field"></span>
                    </div>

                    <div class="col-md-12" id="supplier_details" style="border: 1px solid;display: none">
                    </div>

                    <br>

                    <div class="form-group">
                        <label for="Route_name">Quantity(kg)</label>
                        <input type="number" step="any" class="form-control" name="quantity" onkeyup="total_price()" id="quantity" onwheel="return false;">
                        <span id="Error_status_quantity" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Quantity(Pound)</label>
                        <input type="number" step="any" class="form-control" name="quantity_pound" onkeyup="total_price_pound()" id="quantity_pound" onwheel="return false;">
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price(kg)</label>
                        <input type="number" step="any" class="form-control" name="unit_price" id="unit_price" onkeyup="unit_price_kg()" onwheel="return false;">
                        <span id="Error_status_unit_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price(Pound)</label>
                        <input type="number" step="any" class="form-control" name="unit_price_pound" id="unit_price_pound"
                               onkeyup="pound_unit_price()" onwheel="return false;">
                        <span id="Error_status_unit_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Total Purchase Price</label>
                        <input type="number" step="any" class="form-control " name="total_purchas_price" id="total_purchas_price" readonly>
                        <span id="Error_status_total_purchas_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Actual Purchase Price</label>
                        <input type="number" step="any" class="form-control " name="actual_purchas_price" id="actual_purchas_price" onwheel="return false;">
                        <span id="Error_status_actual_purchas_price" class="text-red error_field"></span>
                    </div>


                </div>
            </div>
        </div>
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
    </div>

    <div class="row justify-content-center">
        <button class="btn btn-success col-md-4" onclick="store_sales_data()" id="form_submission_button">Create Purchase</button>
        <button class="btn btn-danger col-md-4" onclick="location.reload();">Reload</button>
    </div>

@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.purchase.create_purchase.create_purchase_js')
@endpush
