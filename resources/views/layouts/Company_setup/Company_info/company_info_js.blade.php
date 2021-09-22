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
                url: "{{ url('admin/company/search_company') }}",
                type: 'POSt',
                data: function (d) {
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'company_name', name: 'company_name'},
                {data: 'company_name_bn', name: 'company_name_bn'},
                {data: 'comapny_reg_person_name', name: 'comapny_reg_person_name'},
                {data: 'company_bin_no', name: 'company_bin_no'},
                {data: 'company_address', name: 'company_address'},
                {data: 'company_phone_number', name: 'company_phone_number'},
                {data: 'company_email_address', name: 'company_email_address'},
                {data: 'company_fax_number', name: 'company_fax_number'},
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
                        url: '{{url('admin/company/delete_company')}}/' + id,
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
    $('#save_country_info').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/country/save_country_info')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#add_button').modal('hide');
                        $("#save_country_info")[0].reset();
                        toastr.success('Country Information Saved', 'Saved');
                        $('.yajra-datatable').DataTable().ajax.reload();
                    }
                }
            },
            error: function (response) {
                $('#Errorcountry_code').text(response.responseJSON.errors.country_code);
                $('#Errorcountry_code_bn').text(response.responseJSON.errors.country_code_bn);
                $('#Errorcountry_name').text(response.responseJSON.errors.country_name);
                $('#Errorcountry_name_bn').text(response.responseJSON.errors.country_name_bn);
                $('#Errorcountry_is_active').text(response.responseJSON.errors.country_is_active);
            }
        });
    })

    // edit country information
    function edit_info(id) {
        $.ajax({
            type: 'get',
            url: '{{url('admin/country/edit_country')}}/' + id,
            success: function (data) {
                $('#modal_data').html('');
                $('#modal_data').append(data);
                $('#edit_country_info').modal('show');
            }
        });
    }

    // update country information
    $('#update_country_form').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/country/update_country')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#edit_country_info').modal('hide');
                        $("#update_country_form")[0].reset();
                        toastr.success('Country Information Updated', 'Updated');
                        $('.yajra-datatable').DataTable().ajax.reload();
                    }
                }
            },
            error: function (response) {
                $('#Error_edit_country_code').text(response.responseJSON.errors.country_code);
                $('#Error_edit_country_code_bn').text(response.responseJSON.errors.country_code_bn);
                $('#Error_edit_country_name').text(response.responseJSON.errors.country_name);
                $('#Error_edit_country_name_bn').text(response.responseJSON.errors.country_name_bn);
                $('#Error_edit_country_is_active').text(response.responseJSON.errors.country_is_active);
            }
        });
    })
</script>
