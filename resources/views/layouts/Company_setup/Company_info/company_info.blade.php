@extends('layouts.partial.app')
@section('title','All Company')
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
@section('active_menu','All Company')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            <a href="{{route('admin.company/create_company')}}"  type="button" class="btn-sm btn-success" style="margin-left: 85%">Add Company Info</a>
        </div>
        <div class="card-body">
            <table class="table yajra-datatable">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Company Name</th>
                    <th>Company Name Bn</th>
                    <th>Company REG Person</th>
                    <th>Company Bin No</th>
                    <th>Company Address</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Fax</th>
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
    @include('layouts.Company_setup.Company_info.company_info_js')

@endpush
