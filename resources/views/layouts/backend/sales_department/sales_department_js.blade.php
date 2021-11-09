
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
                url: "{{ url('admin/Department/get_sales_department_data') }}",
                type: 'POSt',
                data: function (d) {
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'stock', name: 'stock', searchable: false},
                {data: 'customer', name: 'customer', searchable: false},
                {data: 'product', name: 'product'},
                {data: 'date', name: 'date'},
                {data: 'unit_price', name: 'unit_price'},
                {data: 'quantity_of_sell', name: 'quantity_of_sell'},
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
                    url: '{{url('admin/Department/delete_sales_department_data')}}/' + id,
                    success: function (response) {
                        if (response) {
                            if (response.permission == false) {
                                toastr.error('you dont have that Permission', 'Permission Denied');
                            } else {
                                toastr.success('Deleted Successful', 'Deleted');
                                $('.yajra-datatable').DataTable().ajax.reload(null, false);
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


    // save information
    $('#save_info').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/Department/store_sales_department_data')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#add_button').modal('hide');
                        $("#save_info")[0].reset();
                        toastr.success('Information Saved', 'Saved');
                        $('.yajra-datatable').DataTable().ajax.reload(null, false);
                        window.location.href = "{{url('admin/sales/sales_department_invoice/1')}}/" + $id;
                    }
                }
            },
            error: function (response) {
                $('#Error_status_stock_id').text(response.responseJSON.errors.stock_id);
                $('#Error_status_customer_id').text(response.responseJSON.errors.customer_id);
                $('#Error_quantity').text(response.responseJSON.errors.quantity_of_sell);
                $('#Error_unit_price').text(response.responseJSON.errors.unit_price);
            }
        });
    })


    // edit information
    function edit_info(id) {
        $.ajax({
            type: 'get',
            url: '{{url('admin/Department/edit_sales_department_data')}}/' + id,
            success: function (data) {
                $('#modal_data').html('');
                $('#modal_data').append(data);
                $('#edit_modal_info').modal('show');
            }
        });
    }

    // update country information
    $('#update_form').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/Department/update_sales_department_data')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#edit_modal_info').modal('hide');
                        $("#update_form")[0].reset();
                        toastr.success('Information Updated', 'Updated');
                        $('.yajra-datatable').DataTable().ajax.reload(null, false);
                    }
                }
            },
            error: function (response) {
                $('#edit_Error_status_date').text(response.responseJSON.errors.date);
                $('#edit_Error_status_buyer').text(response.responseJSON.errors.buyer);
                $('#edit_Error_status_quantity').text(response.responseJSON.errors.quantity);
                $('#edit_Error_status_roll').text(response.responseJSON.errors.roll);
                $('#edit_Error_status_lot').text(response.responseJSON.errors.lot);
                $('#edit_Error_status_sell').text(response.responseJSON.errors.sell);
                $('#edit_Error_status_balance').text(response.responseJSON.errors.balance);
                $('#edit_Error_status_stock_id').text(response.responseJSON.errors.stock_id);
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
    
    
        $(function () {
        $('#stock_id').on('change', function () {
            var stock_id = $(this).val();
            $.ajax({
                url: "{{url('admin/Department/show_single_lot_department_data')}}/" + stock_id,
                type: "GET",
                success: function (data) {
                    $('#stock_quantity').val(data.quantity);
                    $('#stock_sales_rate').val(data.sales_rate);
                    $('#stock_total_sales_rate').val(data.total_sales_price);
                    
                }
            });
        });

    });
    
        function customer_details(id) {
        $.ajax({
            url: "{{url('admin/customer/show')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#customer_details_model_content').html('');
                $('#customer_details_model_content').append(data);
                $('#customer_details').modal('show');
            },
            error: function (data) {
                console.log(data)
            }
        });
    }
    
    function print_invoice($id)
    {
         window.location.href = "{{url('admin/sales/sales_department_invoice')}}/" + $id;
    }

</script>
