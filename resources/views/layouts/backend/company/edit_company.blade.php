@extends('layouts.backend.partial.app')
@section('title','Edit Company')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Edit Company')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>Edit Comapny</h3></div>
                <div class="card-body">
                    <form action="{{url('admin/company/company_update',$company->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="Route_name">Company Name</label>
                                <input type="text" class="form-control" name="company_name" value="{{$company->company_name}}">
                                <span id="error_status_company_name" class="text-red error_field"></span>
                            </div>
                            <div class="form-group">
                                <label for="Route_name">Company address</label>
                                <input type="text" class="form-control" name="company_address" value="{{$company->company_address}}">
                                <span id="error_status_company_address" class="text-red error_field"></span>
                            </div>
                            <div class="form-group">
                                <label for="Route_name">Company contact no</label>
                                <input type="number" class="form-control" name="company_contact_no" value="{{$company->company_contact_no}}">
                                <span id="error_status_company_contact_no" class="text-red error_field"></span>
                            </div>
                            <div class="form-group">
                                <label for="Route_name">Country</label>
                                <input type="text" class="form-control" name="country" value="{{$company->country}}">
                                <span id="error_status_country" class="text-red error_field"></span>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">update</button>
                        </div>
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
