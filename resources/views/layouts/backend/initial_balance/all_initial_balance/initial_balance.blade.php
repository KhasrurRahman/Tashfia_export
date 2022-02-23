@extends('layouts.backend.partial.app')
@section('title','Opening and Closing Balance')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Opening and Closing Balance')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
{{--            @include('layouts.backend.report.profit.profit_loss_search_search')--}}
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            </div>
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>SL</th>
                    <th>Date</th>
                    <th>Opening Balance</th>
                    <th>Closing Balance</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                <tr>
                    <th></th>
                    <th style="text-align:right">Total:</th>
                    <th class="bg-danger text-white"></th>
                    <th></th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>

@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    <script src="https://cdn.datatables.net/plug-ins/1.10.22/api/sum().js"></script>
    @include('layouts.backend.initial_balance.all_initial_balance.initial_balance_js')

@endpush
