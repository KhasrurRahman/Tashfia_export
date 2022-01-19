@extends('layouts.partial.app')
@section('title','Shipping Mode')
@push('css')
    <link rel="stylesheet" href="{{ asset('plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/select2/dist/css/select2.min.css') }}">
    <style>
        .select2-container--default .select2-selection--single {
            height: 40px !important;
        }
    </style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Shipping Mode')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            <a href="#add_button" data-toggle="modal" type="button" class="btn-sm btn-success" style="margin-left: 85%">Add @yield('title')</a>
        </div>
        <div class="card-body">
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Shipping Mode Name</th>
                    <th>Shipping Mode Bangla Name</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.Manage_system_variable.ship_mode.add_shipping_mode_model')
    @include('layouts.Manage_system_variable.ship_mode.edit_shipping_mode_model')
@endsection
@push('js')
    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('js/datatables.js') }}"></script>
    <script src="{{ asset('js/sweetalart.js') }}"></script>
    @include('layouts.Manage_system_variable.ship_mode.shipping_mode_js')
@endpush
