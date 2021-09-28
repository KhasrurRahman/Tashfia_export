@extends('layouts.backend.partial.app')
@section('title','Add product')
@push('css')
@endpush
@section('main_menu','HOME')
@section('active_menu','Add product')
@section('link',route('admin.adminDashboard'))
@section('content')
    <form class="forms-sample" method="post" action="{{route('admin.product/store')}}">
        @csrf
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Create Product</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Bill/Challan No</label>
                            <input type="text" class="form-control" name="chalan_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Party Name </label>
                            <input type="text" class="form-control" name="party_name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Color Name</label>
                            <input type="text" class="form-control" name="color_name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Open / Tube</label>
                            <input type="text" class="form-control" name="open_tube">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputUsername1">S/L NO</label>
                            <input type="text" class="form-control" name="sl_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Greige/G.G.S.M</label>
                            <input type="text" class="form-control" name="ggsm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Yarn Count</label>
                            <input type="text" class="form-control" name="yarn_count">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Yarn Lot No</label>
                            <input type="text" class="form-control" name="yarn_lot_no">
                        </div>

                        <button type="submit" class="btn btn-block btn-primary mr-2">Save</button>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Create Product</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Fabric Receive Date</label>
                            <input type="date" class="form-control" name="fb_rv_date">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Batch Process Date </label>
                            <input type="date" class="form-control" name="batch_process_date">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Lot number</label>
                            <input type="text" class="form-control" name="lot_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Batch number</label>
                            <input type="text" class="form-control" name="batch_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Order number</label>
                            <input type="text" class="form-control" name="order_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Style number</label>
                            <input type="text" class="form-control" name="style_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Finish GSM</label>
                            <input type="text" class="form-control" name="finish_gsm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Fabric Type</label>
                            <input type="text" class="form-control" name="fabric_type">
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>


@endsection
@push('js')
    <script src="{{ asset('js/form-components.js') }}"></script>
@endpush

