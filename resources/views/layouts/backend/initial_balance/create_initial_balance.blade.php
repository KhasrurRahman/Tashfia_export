@extends('layouts.backend.partial.app')
@section('title','Update Opening Balance')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Update Opening Balance')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>@yield('title')</h3></div>
                <div class="card-body">
                    <form action="{{route('admin.initalBalance/add_initial_balance')}}" method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="Route_name">Date</label>
                            <input type="date" class="form-control" name="date" required value="{{$data->date}}">
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Opening Balance</label>
                            <input type="number" class="form-control" name="opening_balance" required
                                   value="{{$data->opening_balance}}" {{check_initial_balance_status() == 1?'readonly':''}}>
                        </div>

                        <button type="submit" class="btn btn-primary" {{check_initial_balance_status() == 1?'disabled':''}}>Update</button>
                    </form>
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
