@extends('layouts.backend.partial.app')
@section('title','suppliers')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','suppliers')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.supplier.supplier_search')
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
                <a href="#add_button" data-toggle="modal" type="button" class="btn-sm btn-success" style="margin-left: 92%">Add @yield('title')</a>
            </div>
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Supplier ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Photo</th>
                    <th>Company name</th>
                    <th>Previous Due</th>
                    <th>Total Due(On Purchase)</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.supplier.add_supplier_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.supplier.supplier_js')

@endpush
