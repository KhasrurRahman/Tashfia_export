@extends('layouts.backend.partial.app')
@section('title','sales Department')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {
            height: 40px !important;
        }</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','sales Department')
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
                    <th>Date</th>
                    <th>Buyer</th>
                    <th>Lot</th>
                    <th>Roll</th>
                    <th>Quantity</th>
                    <th>sell</th>
                    <th>balance</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.sales_department.add_model')
    @include('layouts.backend.sales_department.edit_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.sales_department.sales_department_js')

@endpush
