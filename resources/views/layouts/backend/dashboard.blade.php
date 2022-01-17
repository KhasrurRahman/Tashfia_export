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
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Total Products</h6>
                                <h2>{{$total_product}}</h2>
                            </div>
                            <div class="icon">
                                <i class="ik ik-award"></i>
                            </div>
                        </div>
{{--                        <small class="text-small mt-10 d-block">6% higher than last month</small>--}}
                    </div>
                    <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"
                             style="width: 62%;"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Total Customer</h6>
                                <h2>{{$total_customer}}</h2>
                            </div>
                            <div class="icon">
                                <i class="ik ik-thumbs-up"></i>
                            </div>
                        </div>
{{--                        <small class="text-small mt-10 d-block">61% higher than last month</small>--}}
                    </div>
                    <div class="progress progress-sm">
                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"
                             style="width: 78%;"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Total Supplier</h6>
                                <h2>{{$total_supplier}}</h2>
                            </div>
                            <div class="icon">
                                <i class="ik ik-calendar"></i>
                            </div>
                        </div>
{{--                        <small class="text-small mt-10 d-block">Total Events</small>--}}
                    </div>
                    <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="31" aria-valuemin="0" aria-valuemax="100"
                             style="width: 31%;"></div>
                    </div>
                </div>
            </div>


{{--            <div class="col-lg-3 col-md-6 col-sm-12">--}}
{{--                <div class="widget">--}}
{{--                    <div class="widget-body">--}}
{{--                        <div class="d-flex justify-content-between align-items-center">--}}
{{--                            <div class="state">--}}
{{--                                <h6>Profit</h6>--}}
{{--                                <h2>41,410</h2>--}}
{{--                            </div>--}}
{{--                            <div class="icon">--}}
{{--                                <i class="ik ik-message-square"></i>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>  --}}
{{--                    <div class="progress progress-sm">--}}
{{--                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
        </div>


{{--        <div class="row">--}}
{{--            <div class="col-lg-6 col-xl-6">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">--}}
{{--                        <h3>{{ __('3D Pie Chart')}}</h3>--}}
{{--                    </div>--}}
{{--                    <div class="card-block text-center">--}}
{{--                        <div id="3D_pie_chart" class="chart-shadow"></div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-lg-6 col-xl-6">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">--}}
{{--                        <h3>{{ __('Bar Chart')}}</h3>--}}
{{--                    </div>--}}
{{--                    <div class="card-block text-center">--}}
{{--                        <div id="bar_chart" class="chart-shadow"></div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-lg-6 col-xl-6">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">--}}
{{--                        <h3>{{ __('Smoothed Line Chart')}}</h3>--}}
{{--                    </div>--}}
{{--                    <div class="card-block text-center">--}}
{{--                        <div id="smoothed_line_chart" class="chart-shadow"></div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-lg-6 col-xl-6">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">--}}
{{--                        <h3>{{ __('Angular Gauge')}}</h3>--}}
{{--                    </div>--}}
{{--                    <div class="card-block text-center">--}}
{{--                        <div id="angular_guage" class="chart-shadow"></div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-lg-12 col-xl-12">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">--}}
{{--                        <h3>{{ __('Line Chart')}}</h3>--}}
{{--                    </div>--}}
{{--                    <div class="card-block text-center">--}}
{{--                        <div id="line_chart" class="chart-shadow"></div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-md-12">--}}
{{--                <div class="card sale-card">--}}
{{--                    <div class="card-header">--}}
{{--                        <h3>{{ __('Map Chart')}}</h3>--}}
{{--                    </div>--}}
{{--                    <div class="card-block">--}}
{{--                        <div class="row">--}}
{{--                            <div class="col-sm-8">--}}
{{--                                <div id="allocation-map" class="chart-shadow"></div>--}}
{{--                            </div>--}}
{{--                            <div class="col-sm-4">--}}
{{--                                <div id="allocation-chart" class="chart-shadow"></div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}


        <h1>
            Coming Soon...
        </h1>
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
