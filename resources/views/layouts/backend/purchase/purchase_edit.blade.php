@extends('layouts.backend.partial.app')
@section('title','Edit Purchase')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Edit Purchase')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>Edit Purchase</h3></div>
                <div class="card-body">
                    <form action="{{route('admin.purchase/update',$purchase->id)}}" method="post">
                        @csrf
                        <div class="modal-header">
                            <h5 class="modal-title" id="add_buttonLabel"> @yield('title')</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="product_id">Select Product</label>
                                <br>
                                <select class="form-control select2" name="product_id" id="product_id">
                                    <option value="">Select</option>
                                    @foreach($products as $data)
                                        <option value="{{$data->id}}" {{$purchase->product_id == $data->id? 'selected':''}}>{{$data->chalan_no}}</option>
                                    @endforeach
                                </select>
                                <span id="Error_status_product_id" class="text-red error_field"></span>
                            </div>

                            <div class="form-group">
                                <label for="product_id">Select Supplier</label>
                                <br>
                                <select class="form-control select2" name="supplier_id" id="supplier_id">
                                    <option value="">Select</option>
                                    @foreach($supplier as $data)
                                        <option value="{{$data->id}}" {{$purchase->supplier_id == $data->id? 'selected':''}}>{{$data->name}}</option>
                                    @endforeach
                                </select>
                                <span id="Error_status_supplier_id" class="text-red error_field"></span>
                            </div>

                            <div class="form-group">
                                <label for="Route_name">Quantity</label>
                                <input type="number" class="form-control" name="quantity" onkeyup="total_price()" id="quantity" value="{{$purchase->quantity}}">
                                <span id="Error_status_quantity" class="text-red error_field"></span>
                            </div>

                            <div class="form-group">
                                <label for="Route_name">Unit Price</label>
                                <input type="number" class="form-control" name="unit_price" id="unit_price" onkeyup="total_price()" value="{{$purchase->unit_price}}">
                                <span id="Error_status_unit_price" class="text-red error_field"></span>
                            </div>

                            <div class="form-group">
                                <label for="Route_name">Total Purchase Price</label>
                                <input type="number" class="form-control" name="total_purchas_price" id="total_purchas_price" readonly value="{{$purchase->total_purchas_price}}">
                                <span id="Error_status_total_purchas_price" class="text-red error_field"></span>
                            </div>

                            <div class="form-group">
                                <label for="Route_name">Actual Purchase Price</label>
                                <input type="number" class="form-control" name="actual_purchas_price" id="actual_purchas_price" value="{{$purchase->actual_purchas_price}}">
                                <span id="Error_status_actual_purchas_price" class="text-red error_field"></span>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-secondary">Update</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();
        });

        function total_price() {
            quantity = $("#quantity").val();
            console.log(quantity)
            $("#total_purchas_price").val($("#unit_price").val() * $("#quantity").val())
        }
    </script>
@endpush
