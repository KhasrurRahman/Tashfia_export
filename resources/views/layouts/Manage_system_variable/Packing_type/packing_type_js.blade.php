<script>
    $(document).ready(function () {
        $('.select2').select2();
    });

    $(function () {
        var table = $('.yajra-datatable').DataTable({
            "order": [[1, 'desc']],
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ],
            processing: true,
            serverSide: true,
            "language": {
                processing: '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
            },
            drawCallback: function (settings) {
                var api = this.api();
                $('#total_data').html(api.ajax.json().recordsTotal);
            },
            ajax: {
                url: "{{ url('admin/PackingType/Search_packing_type') }}",
                type: 'POSt',
                data: function (d) {
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'packing_type_name', name: 'packing_type_name'},
                {data: 'packing_type_name_bn', name: 'packing_type_name_bn'},
                {data: 'action', name: 'action', searchable: false},
            ],
        });
        $('#search_form').on('submit', function (event) {
            event.preventDefault();
            table.draw(true);
        });
    });


    function delete_data(id) {
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
                    $.ajax({
                        type: 'get',
                        url: '{{url('admin/PackingType/delete_packing_type')}}/' + id,
                        success: function (response) {
                            if (response) {
                                if (response.permission == false) {
                                    toastr.error('you dont have that Permission', 'Permission Denied');
                                } else {
                                    toastr.success('Deleted Successful', 'Deleted');
                                    $('.yajra-datatable').DataTable().ajax.reload();
                                }
                            }
                        }
                    });
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


    // save country information
    $('#save_info').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/PackingType/save_packing_type')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    console.log(response)
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#add_button').modal('hide');
                        $("#save_info")[0].reset();
                        toastr.success('Type Information Saved', 'Saved');
                        $('.yajra-datatable').DataTable().ajax.reload();
                    }
                }
            },
            error: function (response) {
                $('#Errorpacking_type_name').text(response.responseJSON.errors.packing_type_name);
                $('#Errorpacking_type_name_bn').text(response.responseJSON.errors.packing_type_name_bn);
            }
        });
    })

    // edit country information
    function edit_info(id) {
        $.ajax({
            type: 'get',
            url: '{{url('admin/PackingType/Edit_packing_type')}}/' + id,
            success: function (data) {
                $('#modal_data').html('');
                $('#modal_data').append(data);
                $('#edit_modal_info').modal('show');
            }
        });
    }

    // update country information
    $('#update__form').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/PackingType/Update_packing_type')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#edit_modal_info').modal('hide');
                        $("#update__form")[0].reset();
                        toastr.success('Updated Successfully', 'Updated');
                        $('.yajra-datatable').DataTable().ajax.reload();
                    }
                }
            },
            error: function (response) {
                $('#Error_edit_packing_type_name').text(response.responseJSON.errors.packing_type_name);
                $('#Error_edit_packing_type_name_bn').text(response.responseJSON.errors.packing_type_name_bn);
            }
        });
    })
</script>
