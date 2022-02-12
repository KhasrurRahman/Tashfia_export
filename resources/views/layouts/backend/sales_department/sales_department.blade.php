@extends('layouts.backend.partial.app')
@section('title','sales')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">

@endpush
@section('main_menu','HOME')
@section('active_menu','sales')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.sales_department.sales_search')
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            </div>
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Customer ID</th>
                    <th>Company</th>
                    <th>Customer</th>
                    <th>Total</th>
                    <th>Paid Amount</th>
                    <th>Due</th>
                    <th>Date</th>
                    <th>Customer Type</th>
                    <th>Payment Status</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                <tr class="bg-success text-white" style="font-size: 0.6vw">
                    <th style="text-align:right">Total:</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>

    @include('layouts.backend.product.view_model')
    @include('layouts.backend.sales_department.customer_details_modal')
    @include('layouts.backend.sales_department.sales_payment_model')
    @include('layouts.backend.sales_department.new_sale.sales_details_model')
    @include('layouts.backend.sales_department.invoice_payment_history_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    <script src="https://cdn.datatables.net/plug-ins/1.10.22/api/sum().js"></script>
    @include('layouts.backend.sales_department.sales_department_js')

@endpush
