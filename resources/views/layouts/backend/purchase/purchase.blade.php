@extends('layouts.backend.partial.app')
@section('title','Purchase')
@push('css')
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }

    </style>
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Purchase')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.purchase.purchase_search')
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
                    <th>Product</th>
                    <th>Supplier</th>
                    <th>Quantity</th>
                    <th>Unit price</th>
                    <th>Total Purchase Price</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

    @include('layouts.backend.purchase.purchase_add_model')
    @include('layouts.backend.purchase.purchase_edit_model')
    @include('layouts.backend.product.view_model')
    @include('layouts.backend.supplier.supplier_details_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.purchase.purchase_js')

@endpush
