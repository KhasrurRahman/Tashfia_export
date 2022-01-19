@extends('layouts.backend.partial.app')
@section('title','Edit Category')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Edit Category')
@section('link',route('admin.dynamic_route'))
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>Edit @yield('title')</h3></div>
                <div class="card-body">
                    <form action="{{url('admin/productcategory/update/'.$catrgory->id)}}" method="post">
                        @csrf
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="Route_name">name</label>
                                <input type="text" class="form-control" name="name" value="{{$catrgory->name}}">
                            </div>

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
