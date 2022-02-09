@extends('layouts.backend.partial.app')
@section('title','All Product')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {
            height: 40px !important;
        }</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','All Product')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-block">
                    @include('layouts.backend.product.product_search')
                </div>
                <div class="card-body">
                    <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
                    <a href="{{route('admin.product/craete')}}" type="button" class="btn-sm btn-success" style="margin-left: 90%">Add Product</a>
                    <div class="dt-responsive">
                        <table class="table table-striped table-bordered nowrap yajra-datatable">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Product Type</th>
                                <th>Product Name</th>
                                <th>Party Name</th>
                                <th>Color Name</th>
                                <th>S/L No</th>
                                <th>G.G.S.M</th>
                                <th>Fabric Receive Date</th>
                                <th>Card No</th>
                                <th>Roll</th>
                                <th>Dia</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



    @include('layouts.backend.product.view_model')
    @include('layouts.backend.product.view_ingredient')
    @include('layouts.backend.product.bar_code_qts_modal')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.product.all_product_js')

@endpush
