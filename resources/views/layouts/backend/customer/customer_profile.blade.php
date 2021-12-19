@extends('layouts.backend.partial.app')
@section('title','Customer details')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/DataTables/datatables.min.css') }}">
    <link rel="stylesheet" href="{{asset('backend/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Customer details')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <img src="{{asset('backend/img/user.jpg')}}" class="rounded-circle" width="150"/>
                            <h4 class="card-title mt-10">{{$customer->name}}</h4>
                            <p class="card-subtitle">Front End Developer</p>
                        </div>
                    </div>
                    <hr class="mb-0">
                    <div class="card-body">
                        <small class="text-muted d-block">Email address </small>
                        <h6>{{$customer->email}}</h6>
                        <small class="text-muted d-block pt-10">Phone</small>
                        <h6>{{$customer->phone}}</h6>
                        <small class="text-muted d-block pt-10">Address</small>
                        <h6>{{$customer->address}}</h6>
                        <small class="text-muted d-block pt-10">Monthly Rent</small>
                        <h6>{{$customer->rent}}</h6>
                        <small class="text-muted d-block pt-10">Balance</small>
                        <h6>{{$customer->blance}}</h6>
                        <small class="text-muted d-block pt-10">Payment Status</small>
                        {{--                        @if ($customer->payment_status == 1)--}}
                        {{--                            <span class="right badge badge-info">Paid</span>--}}
                        {{--                        @elseif ($customer->payment_status == 0)--}}
                        {{--                            <span class="right badge badge-warning">Unpaid</span>--}}
                        {{--                        @endif--}}
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="card">
                    <ul class="nav nav-pills custom-pills" id="pills-tab" role="tablist">
                        <li class="nav-item active">
                            <a class="nav-link active" id="pills-profile-tab" data-toggle="pill" href="#tranjection_history" role="tab" aria-controls="pills-profile"
                               aria-selected="false">Transaction History</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-timeline-tab" data-toggle="pill" href="#pay_bill" role="tab" aria-controls="pills-timeline"
                               aria-selected="true">Pay Your Bill</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-setting-tab" data-toggle="pill" href="#setting" role="tab" aria-controls="pills-setting"
                               aria-selected="false">Setting</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade" id="pay_bill" role="tabpanel" aria-labelledby="pills-timeline-tab">
                            <div class="card-body">
                                <form class="form-horizontal" method="post" action="">
                                    @csrf

                                    <div class="form-group">
                                        <label for="example-name">Amount</label>
                                        <input type="number" class="form-control" name="amount" value="">
                                    </div>
                                    <button class="btn btn-success" type="submit">Pay</button>
                                </form>
                            </div>
                        </div>


                        <div class="tab-pane fade show active" id="tranjection_history" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Due</th>
                                    </tr>
                                    </thead>
                                    <tbody>


                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>


                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>Id</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Due</th>
                                    </tr>
                                    </tfoot>
                                </table>
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

@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{asset('backend/plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
    <script src="{{ asset('backend/js/datatables.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    @include('layouts.backend.customer.customer_js')

@endpush
