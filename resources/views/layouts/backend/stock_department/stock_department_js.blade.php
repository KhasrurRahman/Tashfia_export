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
                url: "{{ url('admin/Department/search') }}",
                type: 'POSt',
                data: function (d) {
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'product', name: 'product', searchable: false},
                {data: 'quantity', name: 'quantity', searchable: false},
                {data: 'sales_rate', name: 'sales_rate'},
                {data: 'total_sales_price', name: 'total_sales_price'},
                {data: 'total_purchas_price', name: 'total_purchas_price'},
                {data: 'date', name: 'date'},
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
                    url: '{{url('admin/Department/delete_lot_department_data')}}/' + id,
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
            url: "{{url('admin/Department/store_lot_department_data')}}",
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
                    }
                }
            },
            error: function (response) {
                 $('#Error_status_purchase_id').text(response.responseJSON.errors.purchase_id);
                $('#Error_sales_rate').text(response.responseJSON.errors.sales_rate);
                $('#Error_total_sales_price').text(response.responseJSON.errors.total_sales_price);
                $('#Error_total_purchas_price').text(response.responseJSON.errors.total_purchas_price);
                $('#Error_quantity').text(response.responseJSON.errors.quantity);
            }
        });
    })


    // edit country information
    function edit_info(id) {
        $.ajax({
            type: 'get',
            url: '{{url('admin/Department/edit_lot_department_data')}}/' + id,
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
            url: "{{url('admin/Department/update_lot_department_data')}}",
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
                $('#Error_status_purchase_id').text(response.responseJSON.errors.purchase_id);
                $('#Error_sales_rate').text(response.responseJSON.errors.sales_rate);
                $('#Error_total_sales_price').text(response.responseJSON.errors.total_sales_price);
                $('#Error_total_purchas_price').text(response.responseJSON.errors.total_purchas_price);
                $('#Error_quantity').text(response.responseJSON.errors.quantity);
            }
        });
    })


    // get product data

    $(function () {
        $('#purchase_id').on('change', function () {
            var purchase_id = $(this).val();
            $.ajax({
                url: "{{url('admin/purchase/show')}}/" + purchase_id,
                type: "GET",
                success: function (data) {
                    console.log(data)
                    $('#create_supplier').val(data.supplier);
                    $('#create_prodyct').val(data.product);
                    $('#create_quantity').val(data.purchase.quantity);
                    $('#create_unit_price').val(data.purchase.unit_price);
                    $('#create_total_purchas_price').val(data.purchase.total_purchas_price);
                    
                }
            });
        });

    });
    
    
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


</script>
