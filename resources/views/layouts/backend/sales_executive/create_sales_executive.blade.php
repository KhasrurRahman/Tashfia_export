@extends('layouts.backend.partial.app')
@section('title','Create Employee Details')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Create Employee Details')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>Create Sales Executive</h3></div>
                <div class="card-body">
                    <form class="forms-sample" method="post" action="{{route('admin.sales_executive/store')}}">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputUsername1">Name</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="text" class="form-control" name="email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Phone</label>
                            <input type="text" class="form-control" name="phone">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Address</label>
                            <input type="text" class="form-control" name="address">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Salary</label>
                            <input type="number" class="form-control" name="salary">
                        </div>
                        <button type="submit" class="btn btn-primary mr-2">Create</button>
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
