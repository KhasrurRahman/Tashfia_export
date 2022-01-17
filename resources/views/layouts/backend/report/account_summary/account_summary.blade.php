@extends('layouts.backend.partial.app')
@section('title','Account Summary')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Account Summary')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="col-12">
                        <form id="search_form" name="search_form" method="post" action="{{route('admin.report/search_account_summary')}}">
                            @csrf
                            <div class="row">

                                <div class="col-5">
                                    <div class="form-group">
                                        <label>Date from:</label>
                                        <input type="date" class="form-control" name="from_date">
                                    </div>
                                </div>

                                <div class="col-5">
                                    <div class="form-group">
                                        <label>Date to:</label>
                                        <input type="date" class="form-control" name="to_date">
                                    </div>
                                </div>

                                <div class="col-2">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                                                style="margin-top: 30px">search
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <div class="card-body">
                    <div class="row text-center justify-content-center">
                        <div class="col-md-5">
                            <div class="card">
                                <h2>Gross profit</h2>
                                <b>{{$profit}}</b>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="card">
                                <h2>Total Expense</h2>
                                <b>{{$expence}}</b>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card">
                                <h2>== <b class="text-red">{{$profit - $expence}} </b></h2>

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
    <script>
        $(document).ready(function () {
            $('.select2').select2();
        });
    </script>
@endpush
