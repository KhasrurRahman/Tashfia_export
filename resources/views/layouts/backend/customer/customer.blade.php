@extends('layouts.backend.partial.app')
@section('title','Customers')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Customers')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.customer.customer_search')
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
                <a href="#add_button" data-toggle="modal" type="button" class="btn-sm btn-success float-right">Add @yield('title')</a>
            </div>
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Customer ID</th>
                    <th>Type</th>
                    <th>Name</th>
                    <th>Company Name</th>
                    <th>Phone</th>
                    <th>Photo</th>
                    <th>Previous Due</th>
                    <th>Total Paid</th>
                    <th>Total Due(on sales)</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.customer.add_customer_model')
    @include('layouts.backend.customer.edit_customer_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.customer.customer_js')

@endpush
