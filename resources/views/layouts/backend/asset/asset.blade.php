@extends('layouts.backend.partial.app')
@section('title','Asset')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {
            height: 40px !important;
        }</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Asset')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.asset.asset_search')
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
                <a href="#add_button" data-toggle="modal" type="button" class="btn-sm btn-success float-right">Add @yield('title')</a>
            </div>

            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Category</th>
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Remarks</th>
                    <th>Date</th>
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
                </tr>
                </tfoot>
            </table>
        </div>
    </div>

    @include('layouts.backend.asset.asset_add_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    <script src="https://cdn.datatables.net/plug-ins/1.10.22/api/sum().js"></script>
    @include('layouts.backend.asset.asset_js')

@endpush
