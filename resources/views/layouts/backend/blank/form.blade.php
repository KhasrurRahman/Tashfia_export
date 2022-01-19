@extends('layouts.backend.partial.app')
@section('title','Blank')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Blank')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>Edit @yield('title')</h3></div>
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
