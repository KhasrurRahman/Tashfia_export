@extends('layouts.backend.partial.app')
@section('title','Advance Sell')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Advance Sell')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            <a href="{{route('admin.workorder/create_workorder')}}" type="button" class="btn-sm btn-success" style="margin-left: 85%">Add @yield('title')</a>
        </div>
        <div class="card-body">
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Product</th>
                    <th>Client name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Company</th>
                    <th>Tax</th>
                    <th>Total</th>
                    <th>Due Date</th>
                    <th>created</th>
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
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.work_order.work_order_js')

@endpush
