@extends('layouts.backend.partial.app')
@section('title','Customer details')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Customer details')
@section('link',route('admin.adminDashboard'))
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <img src="{{asset('upload/customer_image/' . $customer->photo)}}" class="rounded-circle" width="150"/>
                            <h4 class="card-title mt-10">{{$customer->name}}</h4>
                            <p class="card-subtitle">{{$customer->company?$customer->company->company_name:$customer->company_name}}</p>
                        </div>
                    </div>
                    <hr class="mb-0">
                    <div class="card-body text-center">
                        <small class="text-muted d-block">Email address </small>
                        <h6>{{$customer->email}}</h6>
                        <small class="text-muted d-block">Customer Id</small>
                        <h6>{{$customer->id}}</h6>
                        <small class="text-muted d-block pt-10">Phone</small>
                        <h6>{{$customer->personal_phone}}</h6>
                        <small class="text-muted d-block pt-10">Address</small>
                        <h6>{{$customer->present_address}}</h6>
                        <small class="text-muted d-block pt-10">Previous Due</small>
                        <h6>{{$customer->balance}}</h6>
                        <small class="text-muted d-block pt-10">Type</small>
                        @if ($customer->type == 'general')
                        <span class="right badge badge-warning">Regular</span>
                        @else
                            <span class="right badge badge-secondary">Walk in</span>
                        @endif
                        <small class="text-muted d-block pt-10">Payment Status</small>
                        @if ($customer->balance >= 0)
                            <span class="right badge badge-info">Paid</span>
                        @elseif ($customer->balance < 0)
                            <span class="right badge badge-warning">Unpaid</span>
                        @endif
                        <br>
                    </div>
                    <a href="{{route('admin.customer/sales_payment_history_pdf',$customer->id)}}" class="btn btn-success" target="_blank">Export Sales Payment history</a>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="card">
                    <ul class="nav nav-pills custom-pills" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-setting-tab" data-toggle="pill" href="#pay_due" role="tab" aria-controls="pills-setting"
                               aria-selected="false">Pay Previous Due</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#sales_history" role="tab" aria-controls="pills-profile"
                               aria-selected="false">Sales History</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#payment_history" role="tab" aria-controls="pills-profile"
                               aria-selected="false">Previous Due Payments History</a>
                        </li>

                        {{--                        <li class="nav-item">--}}
                        {{--                            <a class="nav-link" id="pills-setting-tab" data-toggle="pill" href="#setting" role="tab" aria-controls="pills-setting"--}}
                        {{--                               aria-selected="false">Setting</a>--}}
                        {{--                        </li>--}}
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade" id="sales_history" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="card-body">
                                <div class="dt-responsive">
                                    <table class="table table-striped table-bordered nowrap simpletable">
                                        <thead>
                                        <tr>
                                            <th>SL.</th>
                                            <th>Date</th>
                                            <th>Sales Code</th>
                                            <th>Total Invoice Price</th>
                                            <th>Paid Amount</th>
                                            <th>Due</th>
                                            <th>Payment Status</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($customer->sales_history as $key=>$data)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                                                <td>{{$data->sales_code}}</td>
                                                <td>{{$data->total_price}}</td>
                                                <td>{{$data->payment_amount}}</td>
                                                <td>{{$data->due}}</td>
                                                <td>
                                                    @if ($data->payment_status == 1)
                                                        <span class="right badge badge-info">Paid</span>
                                                    @elseif ($data->payment_status == 0)
                                                        <span class="right badge badge-warning">Unpaid</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{url('admin/sales/sales_department_invoice/' .
                    $data->id)}}" class="btn btn-sm btn-success" target="_blank">Invoice</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th colspan="3">Total</th>
                                            <th>{{$customer->sales_history->sum('total_price')}}</th>
                                            <th>{{$customer->sales_history->sum('payment_amount')}}</th>
                                            <th>{{$customer->sales_history->sum('due')}}</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="payment_history" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="card-body">
                                <div class="dt-responsive">
                                    <table class="table table-striped table-bordered nowrap simpletable">
                                        <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Date</th>
                                            <th>Payment Mode</th>
                                            <th>Amount</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($customer->payment_history as $key=>$data)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                                                <td>{{$data->payment_mode}}</td>
                                                <td>{{$data->amount}}</td>
                                        @endforeach
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th colspan="3">Total</th>
                                            <th>{{$customer->payment_history->sum('amount')}}</th>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade show active" id="pay_due" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="card-body">
                                <form action="{{route('admin.customer/manual_due_payment')}}" method="post" id="pay_bill_form">
                                    @csrf
                                    <input type="hidden" value="{{$customer->id}}" name="customer_id">
                                    @include('layouts.backend.purchase.bank_card')

                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary">Make Payment</button>
                                    </div>
                                </form>
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
