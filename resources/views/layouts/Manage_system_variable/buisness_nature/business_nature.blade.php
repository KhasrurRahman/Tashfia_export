@extends('layouts.partial.app')
@section('title','Business Nature')
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
@section('active_menu','Business Nature')
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
                    <th>Business Nature Name</th>
                    <th>Business Nature Bangla Name</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.Manage_system_variable.buisness_nature.add_business_nature_model')
    @include('layouts.Manage_system_variable.buisness_nature.edit_business_nature_model')
@endsection
@push('js')
    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('js/datatables.js') }}"></script>
    <script src="{{ asset('js/sweetalart.js') }}"></script>
    @include('layouts.Manage_system_variable.buisness_nature.business_nature_js')

@endpush
