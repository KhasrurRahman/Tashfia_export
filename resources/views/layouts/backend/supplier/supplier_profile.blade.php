@extends('layouts.backend.partial.app')
@section('title','Supplier details')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Supplier details')
@section('link',route('admin.adminDashboard'))
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <img src="{{asset('upload/supplier_image/' . $supplier->photo)}}" class="rounded-circle" width="150"/>
                            <h4 class="card-title mt-10">{{$supplier->name}}</h4>
                            <p class="card-subtitle">{{$supplier->company->company_name}}</p>
                        </div>
                    </div>
                    <hr class="mb-0">
                    <div class="card-body text-center">
                        <small class="text-muted d-block">Email address </small>
                        <h6>{{$supplier->email}}</h6>
                        <small class="text-muted d-block">Customer Id</small>
                        <h6>{{$supplier->id}}</h6>
                        <small class="text-muted d-block pt-10">Phone</small>
                        <h6>{{$supplier->personal_phone}}</h6>
                        <small class="text-muted d-block pt-10">Address</small>
                        <h6>{{$supplier->present_address}}</h6>
                    </div>
                    <a href="{{route('admin.supplier/supplier_purchase_history_generate',$supplier->id)}}" class="btn btn-success" target="_blank">Export Purchase Payment history</a>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="card">
                    <ul class="nav nav-pills custom-pills" id="pills-tab" role="tablist">
                        <li class="nav-item active">
                            <a class="nav-link active" id="pills-profile-tab" data-toggle="pill" href="#sales_history" role="tab" aria-controls="pills-profile"
                               aria-selected="false">Purchase History</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="pills-setting-tab" data-toggle="pill" href="#setting" role="tab" aria-controls="pills-setting"
                               aria-selected="false">Setting</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">

                        <div class="tab-pane fade show active" id="sales_history" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="card-body">
                                <div class="dt-responsive">
                                    <table class="table table-striped table-bordered nowrap simpletable">
                                        <thead>
                                        <tr>
                                            <th>SL.</th>
                                            <th>Date</th>
                                            <th>Item</th>
                                            <th>Code</th>
                                            <th>Quantity(kG)</th>
                                            <th>Total purchase Price(Tk)</th>
                                            <th>Actual purchase Price(Tk)</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($supplier->purchase as $key=>$data)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                                                <td>{{$data->product->chalan_no}}</td>
                                                <td>{{$data->product->card_no}}</td>
                                                <td>{{$data->quantity}}</td>
                                                <td>{{$data->total_purchas_price}}</td>
                                                <td>{{$data->actual_purchas_price}}</td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>SL.</th>
                                            <th>Date</th>
                                            <th>Item</th>
                                            <th>Code</th>
                                            <th>Quantity</th>
                                            <th>Total purchase Price</th>
                                            <th>Actual purchase Price</th>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="setting" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="card-body">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('layouts.backend.sales_department.invoice_payment_history_model')
    @include('layouts.backend.sales_department.new_sale.sales_details_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>

@endpush
