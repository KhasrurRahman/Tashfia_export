@extends('layouts.backend.partial.app')
@section('title','Stock Department')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>.select2-container--default .select2-selection--single {
            height: 40px !important;
        }</style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Stock Department')
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
                    <th>product chalan no</th>
                    <th>Purchase Date</th>
                    <th>Quantity</th>
                    <th>Sales Unite Price</th>
                    <th>Purchase Unit Rate</th>
                    <th>balance</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.lot_department.add_model')
    @include('layouts.backend.lot_department.edit_model')
    @include('layouts.backend.product.view_model')
@endsection
@push('js')
     <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();
        });
    </script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.lot_department.lot_department_js')

@endpush
