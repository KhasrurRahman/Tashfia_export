@extends('layouts.partial.app')
@section('title','Country Information')
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
@section('active_menu','Country Information')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            <a href="{{route('admin.menu/menu_create')}}" type="button" class="btn-sm btn-success" style="margin-left: 85%">Create Menu</a>
        </div>
        <div class="card-body">
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Menu Name</th>
                    <th>Menu Bangla Name</th>
                    <th>Activation Status</th>
                    <th>Icon Class</th>
                    <th>Parent Menu</th>
                    <th>Route</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>


@endsection
@push('js')
    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('js/datatables.js') }}"></script>
    <script src="{{ asset('js/sweetalart.js') }}"></script>
@endpush
