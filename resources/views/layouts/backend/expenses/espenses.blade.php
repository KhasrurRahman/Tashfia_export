@extends('layouts.backend.partial.app')
@section('title','Expenses')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {
            height: 40px !important;
        }</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Expenses')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.expenses.expenses_search')
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
                <a href="#add_button" data-toggle="modal" type="button" class="btn-sm btn-success float-right">Add @yield('title')</a>
            </div>

            <table class="table yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Category</th>
                    <th>Name</th>
                    <th>Balance</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.expenses.expenses_add_model')
    @include('layouts.backend.expenses.expenses_edit_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.expenses.expenses_js')

@endpush
