<script>
    $(document).ready(function () {
        $('.select2').select2();
    });

    $(function () {
        var table = $('.yajra-datatable').DataTable({
            "order": [[1, 'desc']],
            "bFilter": false,
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ],
            processing: true,
            serverSide: true,
            "language": {
                processing: '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
            },
            dom: 'lBfrtip',
            buttons: [
                'excel', 'csv', 'pdf', 'copy'
            ],
            drawCallback: function (settings) {
                var api = this.api();
                $('#total_data').html(api.ajax.json().recordsTotal);
            },
            ajax: {
                url: "{{ url('admin/product/alldata') }}",
                type: 'POSt',
                data: function (d) {
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'product_type', name: 'product_type'},
                {data: 'chalan_no', name: 'chalan_no'},
                {data: 'party_name', name: 'party_name'},
                {data: 'color_name', name: 'color_name'},
                {data: 'sl_no', name: 'sl_no'},
                {data: 'ggsm', name: 'ggsm'},
                {data: 'fb_rv_date', name: 'fb_rv_date'},
                {data: 'lot_no', name: 'lot_no'},
                {data: 'batch_no', name: 'batch_no'},
                {data: 'order_no', name: 'order_no'},
                {data: 'card_no', name: 'card_no'},
                {data: 'roll', name: 'roll'},
                {data: 'dia', name: 'dia'},
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
                    url: '{{url('admin/product/delete')}}/' + id,
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


    function view_modal(id) {
        $.ajax({
            url: "{{url('admin/product/view')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#chalan_no').html(data.chalan_no);
                $('#lot_no').html(data.lot_no);
                $('#party_name').html(data.party_name);
                $('#color_name').html(data.color_name);
                $('#ggsm').html(data.ggsm);
                $('#card_no').html(data.card_no);
                $('#yarn_count').html(data.yarn_count);
                $('#yarn_lot_no').html(data.yarn_lot_no);
                $('#sl_no').html(data.sl_no);
                $('#order_no').html(data.order_no);
                $('#view_modal').modal('show');
            },
            error: function (data) {
                console.log(data)
            }
        });
    }

    function bar_code_modal(id) {
        $('#bar_code_product_id').val(id);
        $('#bar_code_print').modal('show');
    }


    function view_ingredient(id) {
        $.ajax({
            url: "{{url('admin/product/ingredients')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#ingredient_model_content').html('');
                $('#ingredient_model_content').append(data);
                $('#ingredient').modal('show');
            },
            error: function (data) {
                console.log(data)
            }
        });
    }
</script>
