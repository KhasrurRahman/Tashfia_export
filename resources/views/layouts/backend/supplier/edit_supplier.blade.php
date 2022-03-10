@extends('layouts.backend.partial.app')
@section('title','Edit Supplier')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Edit Supplier')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>@yield('title')</h3></div>
                <div class="card-body">
                    <form action="{{url('admin/supplier/update/'.$supplier->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <div class="form-group">
                                <label for="">Select Company</label>
                                <select class="form-control select2" name="company_id">
                                    <option value="">Please select</option>
                                    @foreach($company as $data)
                                        <option value="{{$data->id}}" {{$supplier->company_id == $data->id ? 'selected' : ''}}>{{$data->company_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Supplier name</label>
                            <input type="text" class="form-control" name="name" required value="{{$supplier->name}}">
                            <span id="Errorpo_status_name" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Previous Due</label>
                            <input type="number" class="form-control" name="balance" min="1" value="{{$supplier->balance}}" disabled>
                            <span id="Errorpo_status_name" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Designation</label>
                            <input type="text" class="form-control" name="designation" value="{{$supplier->designation}}">
                            <span id="Errorpo_status_designation" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Nationality</label>
                            <input type="text" class="form-control" name="nationality" value="{{$supplier->nationality}}">
                            <span id="Errorpo_status_nationality" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Photo</label>
                            <input type="file" name="customer_photo" value="{{$supplier->customer_photo}}"/>
                            <span id="Errorpo_status_photo" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Present address</label>
                            <input type="text" class="form-control" name="present_address" value="{{$supplier->present_address}}">
                            <span id="Errorpo_status_present_address" class="text-red error_field"></span>
                        </div>


                        <div class="form-group">
                            <label for="Route_name">Permanent address</label>
                            <input type="text" class="form-control" name="permanent_address" value="{{$supplier->permanent_address}}">
                            <span id="Errorpo_status_permanent_address" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Personal phone number</label>
                            <input type="text" class="form-control" name="personal_phone" value="{{$supplier->personal_phone}}">
                            <span id="Errorpo_status_personal_phone" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Optional phone number</label>
                            <input type="text" class="form-control" name="optional_phone" value="{{$supplier->optional_phone}}">
                            <span id="Errorpo_status_optional_phone" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">email</label>
                            <input type="text" class="form-control" name="email" value="{{$supplier->email}}">
                            <span id="Errorpo_status_email" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">NID</label>
                            <input type="text" class="form-control" name="nid" value="{{$supplier->nid}}">
                            <span id="Errorpo_status_nid" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Reference</label>
                            <input type="text" class="form-control" name="reference" value="{{$supplier->reference}}">
                            <span id="Errorpo_status_reference" class="text-red error_field"></span>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
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
