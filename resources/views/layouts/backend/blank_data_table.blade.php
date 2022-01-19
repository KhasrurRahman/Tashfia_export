@extends('layouts.backend.partial.app')
@section('title','Device Sell History')
@push('css')
<link rel="stylesheet" href="{{asset('assets/backend/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Device Sell History')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            {{--              <h3 class="card-title">Total User: <span class="badge badge-secondary">{{$user->count()}}</span></h3>--}}
            <a href="{{route('admin.all_user.create')}}" type="button" class="btn-sm btn-success float-right">Add User</a>
        </div>
        <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Car Number</th>
                    <th>Car Model</th>
                    <th>Monthly Bill</th>
                    <th>Total Due</th>
                    <th>Due Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>


                </tbody>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Car Number</th>
                    <th>Car Model</th>
                    <th>Monthly Bill</th>
                    <th>Total Due</th>
                    <th>Due Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>


@endsection
@push('js')
    <script src="{{asset('public/assets/backend/plugins/datatables/jquery.dataTables.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
    <script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
    <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
            });
        });
    </script>

    <script type="text/javascript">
        function deletePost(id) {
            swal({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    window.location.href = "{{url('admin/support/delete_problem_type')}}/" + id;
                } else if (
                    result.dismiss === swal.DismissReason.cancel
                ) {
                    swal(
                        'Cancelled',
                        'Your data is safe :)',
                        'error'
                    )
                }
            })
        }
    </script>

@endpush
