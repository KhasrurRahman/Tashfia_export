<script>
    $(document).ready(function () {
        $('.select2').select2();
    });

    $('.simpletable').DataTable();

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
                url: "{{ url('admin/customer/search') }}",
                type: 'POSt',
                data: function (d) {
                    d.search_company_id = $('#search_company_id').val();
                    d.search_name = $('#search_name').val();
                    d.search_phone = $('#search_phone').val();
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'name', name: 'name'},
                {data: 'company', name: 'company'},
                {data: 'personal_phone', name: 'personal_phone'},
                {data: 'present_address', name: 'present_address'},
                {data: 'email', name: 'email'},
                {data: 'photo', name: 'photo'},
                {data: 'balance', name: 'balance'},
                {data: 'action', name: 'action', searchable: false},
            ],
        });
        $('#search_form').on('submit', function (event) {
            event.preventDefault();
            table.draw(true);
        });
    });

    function form_reset() {
        document.getElementById("search_form").reset();
        $('.select2').val(null).trigger('change');
        $('.yajra-datatable').DataTable().ajax.reload(null, false);
    }


    // save data
    $('#save_info').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/customer/store')}}",
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: $(this).serializeArray(),
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
                $('#Errorpo_status_name').text(response.responseJSON.errors.po_status_name);
                $('#Errorpo_status_phone').text(response.responseJSON.errors.po_status_phone);
                $('#Errorpo_status_address').text(response.responseJSON.errors.po_status_address);
                $('#Errorpo_status_email').text(response.responseJSON.errors.po_status_email);
            }
        });
    })


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
                    url: '{{url('admin/customer/delete')}}/' + id,
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


    // edit country information
    function edit_info(id) {
        $.ajax({
            type: 'get',
            url: '{{url('admin/POStatus/edit')}}/' + id,
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
            url: "{{url('admin/POStatus/update')}}",
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
                $('#Error_edit_po_status_name').text(response.responseJSON.errors.po_status_name);
                $('#Error_edit_po_status_name_bn').text(response.responseJSON.errors.po_status_name_bn);
            }
        });
    })

    function sales_details(id) {
        $.ajax({
            url: "{{url('admin/sales/sales_details_invoice')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#sales_details_model_content').html('');
                $('#sales_details_model_content').append(data);
                $('#sales_details').modal('show');
            },
            error: function (data) {
                // console.log(data)
            }
        });
    }

    function invoice_payment_history(id) {
        $.ajax({
            url: "{{url('admin/sales/invoice_payment_history')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#invoice_payments_model_content').html('');
                $('#invoice_payments_model_content').append(data);
                $('#invoice_payments_details').modal('show');
            },
            error: function (data) {
                console.log(data)
            }
        });
    }

    {{--var num = {{$customer->balance}};--}}
    {{--num -= num * 2;--}}
    {{--$('#customer_inputed_amount').attr({--}}
    {{--    'max': num--}}
    {{--})--}}

    function cheque_date_input(select) {
        if (select.value === 'Cheque') {
            $('#check_section').show(1000);
        } else {
            $('#check_section').hide(1000);
        }
    }
</script>
