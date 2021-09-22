@extends('layouts.partial.app')
@section('title','Dashboard')
@push('css')
    <style>
        /* Center the loader */
        #loader {
            position: absolute;
            left: 50%;
            top: 50%;
            z-index: 1;
            width: 120px;
            height: 120px;
            margin: -76px 0 0 -76px;
            border: 16px solid #f3f3f3;
            border-radius: 50%;
            border-top: 16px solid #3498db;
            -webkit-animation: spin 2s linear infinite;
            animation: spin 2s linear infinite;
        }

        @-webkit-keyframes spin {
            0% {
                -webkit-transform: rotate(0deg);
            }
            100% {
                -webkit-transform: rotate(360deg);
            }
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        /* Add animation to "page content" */
        .animate-bottom {
            position: relative;
            -webkit-animation-name: animatebottom;
            -webkit-animation-duration: 1s;
            animation-name: animatebottom;
            animation-duration: 1s
        }

        @-webkit-keyframes animatebottom {
            from {
                bottom: -100px;
                opacity: 0
            }
            to {
                bottom: 0px;
                opacity: 1
            }
        }

        @keyframes animatebottom {
            from {
                bottom: -100px;
                opacity: 0
            }
            to {
                bottom: 0;
                opacity: 1
            }
        }

        #myDiv {
            display: none;
            text-align: center;
        }
    </style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Dashboard')
@section('link',route('admin.adminDashboard'))
@section('content')
    <div class="row">
        <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
                <div class="inner">
                    <h5 class="count">{{$total_subscriber}}</h5>
                    <small>Suspend Subscriber({{$total_suspended_subscriber}})</small>
                    <p>Total Subscriber</p>
                </div>
                <div class="icon">
                    <i class="fas fa-sort-amount-up-alt"></i>
                </div>
                <a href="{{route('admin.subscriber/ajax_all_subscriber')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-6">
            <div class="small-box bg-fuchsia">
                <div class="inner">
                    <h3 class="count">{{$total_active_subscriber}}</h3>
                    <p>Total Active Subscriber</p>
                </div>
                <div class="icon">
                    <i class="fas fa-credit-card"></i>
                </div>
                <a href="{{route('admin.subscriber/ajax_all_subscriber')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-6">
            <div class="small-box bg-gradient-orange">
                <div class="inner">
                    <h3 class="count">{{$today_new_subscriber}}</h3>
                    <p>New Subscriber (Today)</p>
                </div>
                <div class="icon">
                    <i class="fas fa-address-card"></i>
                </div>
                <a href="{{route('admin.subscriber/ajax_all_subscriber')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
                <div class="inner">
                    <h3 class="count">{{$total_corporate}}</h3>
                    <p>Total Corporate Subscriber</p>
                </div>
                <div class="icon">
                    <i class="fas fa-user-tie"></i>
                </div>
                <a href="{{route('admin.corporate/corporate_subscriber')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-6">
            <div class="small-box bg-blue">
                <div class="inner">
                    <h4 class="count">{{$today_complain}}</h4>
                    <small>solved: ({{$today_solved_complain}})</small>
                    <p>Total Complaint (Today)</p>
                </div>
                <div class="icon">
                    <i class="fas fa-address-card"></i>
                </div>
                <a href="{{route('admin.complain/all_complain')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>

        @if(role_id() != 13)
            <div class="col-lg-3 col-6">
                <div class="small-box bg-gradient-danger">
                    <div class="inner">
                        <h4 class="count">{{$today_payemnt_history}}</h4>
                        <small>This Month: {{$total_payemnt_history_this_month}} Tk</small>
                        <p>Payment History (Today)</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-address-card"></i>
                    </div>
                    <a href="{{route('admin.payment/online_payment_history')}}" class="small-box-footer">More info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
        @endif
        <div class="col-lg-3 col-6">
            <div class="small-box bg-gradient-gray-dark">
                <div class="inner">
                    <h4 class="count">{{$today_disconnect_forcast}}</h4>
                    <small>Tomorrow: {{$tommrow_disconnect_forcast}}</small>
                    <p>Disconnect Forecast (Today)</p>
                </div>
                <div class="icon">
                    <i class="fas fa-address-card"></i>
                </div>
                <a href="{{route('admin.report/disconnected_froecast')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-6">
            <div class="small-box bg-gradient-olive">
                <div class="inner">
                    <h4 class="count">{{$today_card_used}}</h4>
                    <small>This Month: {{$This_month_card_used}}</small>
                    <p>Card Recharge (Today)</p>
                </div>
                <div class="icon">
                    <i class="fas fa-address-card"></i>
                </div>
                <a href="{{route('admin.scratch_card/all_scratchcard')}}" class="small-box-footer">More info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>

    </div>
    <div class="row">
        @include('layouts.backend.dashboard.dashboard_report')
    </div>



@endsection
@push('js')
    <script src="{{asset('assets/backend/js/pages/dashboard.js')}}"></script>
    <script src="{{asset('assets/backend/plugins/flot/jquery.flot.js')}}"></script>
    <script src="{{asset('assets/backend/js/Chart.js')}}"></script>
    <script src="{{asset('assets/backend/js/demo.js')}}"></script>


    <script>
        var background = ["rgba(255, 99, 132, 0.6)", "rgba(54, 162, 235, 0.6)", "rgba(255, 206, 86, 0.6)", "rgb(74,179,29,0.6)", "rgba(153, 102, 255, 0.6)","rgba(179,61,85,0.6)", "rgb(176,20,93,0.6)", "rgb(28,151,208,0.6)", "rgba(75, 192, 192, 0.6)", "rgba(153, 102, 255, 0.6)","rgb(229,121,27,0.6)", "rgb(235,60,54,0.6)", "rgb(53,186,24,0.6)", "rgb(8,37,79,0.6)", "rgba(153, 102, 255, 0.6)","rgba(179,61,85,0.6)", "rgb(7,33,165,0.6)", "rgb(25,27,29,0.6)", "rgb(116,44,196,0.6)", "rgb(96,7,102,0.6)","rgba(255, 99, 132, 0.6)", "rgba(54, 162, 235, 0.6)", "rgb(100,110,21,0.6)", "rgb(31,134,58,0.6)", "rgba(92,0,255,0.6)","rgb(131,23,113,0.6)", "rgb(96,233,56,0.6)", "rgb(28,151,208,0.6)", "rgb(190,170,10,0.6)", "rgba(67,22,155,0.6)","rgb(229,121,27,0.6)", "rgba(117,26,24,0.6)", "rgb(53,186,24,0.6)", "rgb(8,37,79,0.6)", "rgba(153, 102, 255, 0.6)","rgb(246,0,255)", "rgb(62,167,33,0.6)", "rgb(153,9,9,0.6)", "rgb(11,185,217,0.6)", "rgb(96,7,102,0.6)",];
        background = background.sort(() => Math.random() - 0.5);


        @if(role_id() != 13)
        // payment chart
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/payment",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {

                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('payment_history').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Amount',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });
        @endif
        // bank_deposit_history chart
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/bank_deposit_history",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('bank_deposit_history').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Amount',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });


        {{--// complain cart--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/complain_history",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('myChart').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Complain',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });


        {{--// area wise complain--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/area_wise_complain",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('myChart_area_complain').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'polarArea',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1
                                }],
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });

        {{--// myChart_complain_status--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/complain_status",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('myChart_complain_status').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'pie',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1,
                                }],
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });

        {{--// myChart_subscriber_rank--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/subscriber_rank",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('myChart_subscriber_by_rank').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Sub',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1,
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });

        {{--// top_complaint--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/top_complaint",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('top_complaint').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Complain',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1,
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });

        {{--// complain_by_type--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/complain_by_type",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('complain_by_type').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Complain',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });

        {{--// myChart_subscriber_by_package--}}
        $.ajax({
            url: "{{url('admin/dashboardreport')}}/subscriber_by_rank",
            type: "GET",
            data: {},
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission to see report chart', 'Permission Denied');
                    } else {
                        var ctx = document.getElementById('myChart_subscriber_by_package').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'horizontalBar',
                            data: {
                                labels: response.lebel,
                                datasets: [{
                                    label: 'Total Sub',
                                    data: response.data,
                                    backgroundColor: background,
                                    borderColor: ['rgba(255,99,132,1)',],
                                    borderWidth: 1,
                                }]
                            },
                            options: {
                                legend: {
                                    display: true,
                                    labels: {
                                        fontColor: 'rgb(255, 99, 132)'
                                    }
                                }
                            }
                        });
                    }
                }
            },
            error: function (response) {
                $('#usernameError').text(response.responseJSON.errors.username);
            }
        });


        $('.count').each(function () {
            $(this).prop('Counter', 0).animate({
                Counter: $(this).text()
            }, {
                duration: 2000,
                easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now));
                }
            });
        });

    </script>
@endpush

