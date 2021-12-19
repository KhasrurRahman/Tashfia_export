@extends('layouts.backend.partial.app')
@section('title','Stock')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {
            height: 40px !important;
        }</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Stock')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            <a href="#add_button" data-toggle="modal" type="button" class="btn-sm btn-success" style="margin-left: 85%">Add @yield('title')</a>
        </div>
        <div class="card-body">
            <table class="table yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.stock_department.stock_add_model')
    @include('layouts.backend.stock_department.stock_edit_model')
    @include('layouts.backend.product.view_model')
@endsection
@push('js')
     <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();
        });
    </script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.stock_department.stock_department_js')

@endpush
