@extends('layouts.backend.partial.app')
@section('title','Dashboard')
@push('css')
    <script src="{{asset('backend/src/js/vendor/modernizr-2.8.3.min.js')}}"></script>
@endpush
@section('main_menu','HOME')
@section('active_menu','Dashboard')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="container-fluid">

        <div class="row clearfix">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-primary">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <p style="font-size: .7vw">আজকের মোট বিক্রয় (পরিমাণ/অর্থ)</p>
                                <h3 style="font-size: 1vw">{{$today_sales_quantity}}কেজি / {{$today_sales}}টাকা</h3>
                            </div>
                            <div class="icon">
                                <i class="ik ik-trending-up"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-info">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <p style="font-size: .7vw">বর্তমান মাসের মোট বিক্রয় (পরিমাণ / অর্থ)</p>
                                <h3 style="font-size: 1vw">{{$current_month_sales_quantity}}কেজি / {{$current_month_sales}}টাকা</h3>
                            </div>
                            <div class="icon">
                                <i class="ik ik-trending-up"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-success">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <p style="font-size: .7vw">আজকের মোট ক্রয় (পরিমাণ/অর্থ)</p>
                                <h3 style="font-size: 1vw">{{$todays_purchase_quantity}}কেজি / {{$todays_purchase_price}}টাকা</h3>
                            </div>
                            <div class="icon">
                                <i class="ik ik-shopping-cart"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-dark">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <p style="font-size: .7vw">বর্তমান মাসের মোট ক্রয় (পরিমাণ/অর্থ)</p>
                                <h3 style="font-size: 1vw">{{$current_month_purchase_quantity}}কেজি / {{$current_month_purchase_price}}টাকা</h3>
                            </div>
                            <div class="icon">
                                <i class="ik ik-shopping-cart"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-fuchsia">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <p style="font-size: .7vw">আজকের মোট বকেয়া (পরিমাণ/অর্থ)</p>
                                <h3 style="font-size: 1vw">{{$todays_sales_due}}কেজি / {{$todays_sales_due_quantity}}টাকা</h3>
                            </div>
                            <div class="icon">
                                <i class="ik ik-trending-down"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-warning">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <p style="font-size: .7vw">বর্তমান মাসের মোট পাওনা (পরিমাণ/অর্থ)</p>
                                <h3 style="font-size: 1vw">{{$current_month_sales_due}}কেজি / {{$current_month_sales_due_quantity}}টাকা</h3>
                            </div>
                            <div class="icon">
                                <i class="ik ik-trending-down"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-danger">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>মোট কাস্টমার</h6>
                                <h2>{{$total_customer}}</h2>
                            </div>
                            <div class="icon">
                                <i class="ik ik-users"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget bg-lime">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>মোট সাপ্লায়ার</h6>
                                <h2>{{$total_supplier}}</h2>
                            </div>
                            <div class="icon">
                                <i class="ik ik-users"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-lg-8 col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3>শেষ ৫টি লেনদেন</h3>
                        <div class="card-header-right">
                            <ul class="list-unstyled card-option">
                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                <li><i class="ik ik-minus minimize-card"></i></li>
                                <li><i class="ik ik-x close-card"></i></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-body feeds-widget">
                        @foreach($last_five_sales_tranjection as $data)
                        <div class="feed-item">
                            <a href="#">
                                <div class="feeds-left"><i class="ik ik-check-circle text-danger"></i></div>
                                <div class="feeds-body">
                                    <h4 class="title text-danger">{{$data->customer->name}}<small class="float-right text-muted">{{$data->created_at->diffForHumans()}}</small></h4>
                                    <small>Amount: {{$data->amount}}/= , Payment Mode: {{$data->payment_mode}} ({{$data->bank_name . $data->cheque_number . $data->bkash_number}})
                                    </small>
                                </div>
                            </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

    </div>

@endsection
@push('js')
    <script src="{{ asset('backend/plugins/amcharts/amcharts.js') }}"></script>
    <script src="{{ asset('backend/plugins/amcharts/gauge.js') }}"></script>
    <script src="{{ asset('backend/plugins/amcharts/serial.js') }}"></script>
    <script src="{{ asset('backend/plugins/amcharts/themes/light.js') }}"></script>
    <script src="{{ asset('backend/plugins/amcharts/animate.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/amcharts/pie.js') }}"></script>
    <script src="{{ asset('backend/plugins/ammap3/ammap/ammap.js') }}"></script>
    <script src="{{ asset('backend/plugins/ammap3/ammap/maps/js/usaLow.js') }}"></script>
    <script src="{{ asset('backend/js/chart-amcharts.js') }}"></script>
@endpush
