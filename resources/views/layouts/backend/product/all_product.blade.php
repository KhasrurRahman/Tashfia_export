@extends('layouts.backend.partial.app')
@section('title','All Product')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {height: 40px !important;}</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','All Product')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            <a href="{{route('admin.product/craete')}}" type="button" class="btn-sm btn-success" style="margin-left: 85%">Add Product</a>
        </div>
        <div class="card-body">
            <table class="table yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Product Type</th>
                    <th>Chalan no</th>  
                    <th>Party Name</th>
                    <th>Color Name</th>
                    <th>S/L No</th>
                    <th>G.G.S.M</th>
                    <th>Fabric Receive Date</th>
                    <th>Lot number</th>
                    <th>Batch number</th>
                    <th>Order number</th>
                    <th>Crad No</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.product.view_model')
    @include('layouts.backend.product.view_ingredient')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.product.all_product_js')

@endpush
