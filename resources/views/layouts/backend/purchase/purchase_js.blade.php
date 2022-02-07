<script>
    $(document).ready(function () {
        $('.select2').select2();
    });

    $(function () {
        var table = $('.yajra-datatable').DataTable({
            "footerCallback": function (row, data, start, end, display) {
                var api = this.api(), data;
                var intVal = function (i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                            i : 0;
                };
                total_purchas_price = this.api().ajax.json().total_purchas_price
                pageTotal_total_purchas_price = api
                    .column(5, {page: 'current'})
                    .data()
                    .sum()
                $(api.column(5).footer()).html(
                    ' ( Tk ' + total_purchas_price + ' )'
                );

                total_actual_purchas_price = this.api().ajax.json().total_actual_purchas_price
                pageTotal_total_actual_purchas_price = api
                    .column(6, {page: 'current'})
                    .data()
                    .sum()
                $(api.column(6).footer()).html(
                    ' ( Tk ' + total_actual_purchas_price + ' )'
                );
            },
            "order": [
                [1, 'desc']
            ],
            "columnDefs": [{
                "className": "dt-center",
                "targets": "_all"
            }],
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
                url: "{{ url('admin/purchase/search') }}",
                type: 'POSt',
                data: function (d) {
                    d.search_supplier_id = $('#search_supplier_id').val();
                    d.search_company_id = $('#search_company_id').val();
                    d.product_name = $('#product_name').val();
                    d.from_date = $('#from_date').val();
                    d.to_date = $('#to_date').val();
                    d._token = '{{ csrf_token() }}'
                }
            },
            columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                searchable: false
            },
                {
                    data: 'product',
                    name: 'product'
                },
                {
                    data: 'supplier',
                    name: 'supplier',
                    searchable: false
                },
                {
                    data: 'Quantity',
                    name: 'Quantity'
                },
                {
                    data: 'unit_price',
                    name: 'unit_price'
                },
                {
                    data: 'total_purchas_price',
                    name: 'total_purchas_price'
                },
                {
                    data: 'actual_purchas_price',
                    name: 'actual_purchas_price'
                },
                {
                    data: 'action',
                    name: 'action',
                    searchable: false
                },
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
                    url: '{{ url('admin/purchase/delete') }}/' + id,
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


    // save country information
    $('#save_info').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{ url('admin/purchase/store') }}",
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
                $('#Error_status_product_id').text(response.responseJSON.errors.product_id);
                $('#Error_status_supplier_id').text(response.responseJSON.errors.supplier_id);
                $('#Error_status_quantity').text(response.responseJSON.errors.quantity);
                $('#Error_status_unit_price').text(response.responseJSON.errors.unit_price);
                $('#Error_status_total_purchas_price').text(response.responseJSON.errors.total_purchas_price);
                $('#Error_status_actual_purchas_price').text(response.responseJSON.errors.actual_purchas_price);
            }
        });
    })


    // edit country information
    function edit_info(id) {
        $.ajax({
            type: 'get',
            url: '{{ url('admin/Department/edit_lot_department_data') }}/' + id,
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
            url: "{{ url('admin/Department/update_lot_department_data') }}",
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
                $('#edit_Error_status_product_id').text(response.responseJSON.errors.product_id);
            }
        });
    })


    // get product data
    $(function () {
        $('#product_id').on('change', function () {
            var product_id = $(this).val();
            $.ajax({
                url: "{{ url('admin/product/view') }}/" + product_id,
                type: "GET",
                success: function (data) {
                    $('#details_chalan_no').html(data.chalan_no);
                    $('#details_card_no').html(data.card_no);
                    $('#details_style_no').html(data.style_no);
                    $('#details_fabric_type').html(data.fabric_type);
                    $("#product_details_show").show(1000);
                }
            });
        });

    });

    $(function () {
        $('#supplier_id').on('change', function () {
            var supplier_id = $(this).val();
            $.ajax({
                url: "{{ url('admin/supplier/show') }}/" + supplier_id,
                type: "GET",
                success: function (data) {
                    // $('#create_chalan_no').html(data.chalan_no);
                    // $('#create_party_name').html(data.party_name);
                    // $('#create_card_no').html(data.order_no);
                    // $('#create_sl_no').html(data.sl_no);
                    // $("#product_details_show").show(1000);
                }
            });
        });

    });


    function view_product(id) {
        $.ajax({
            url: "{{ url('admin/product/view') }}/" + id,
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


    function supplier_details(id) {
        $.ajax({
            url: "{{ url('admin/supplier/show') }}/" + id,
            type: "GET",
            success: function (data) {
                $('#supplier_details_model_content').html('');
                $('#supplier_details_model_content').append(data);
                $('#supplier_details').modal('show');
            },
            error: function (data) {
                console.log(data)
            }
        });
    }


    // $('.quantity, .unit_price').keyup(function () {
    //     console.log('asdasd');
    //     // $(".total_purchas_price").val($(".unit_price").val() * $(".quantity").val())
    // });

    function total_price() {
        $("#quantity_pound").val(($("#quantity").val() * 2.20462262185).toFixed(3))
        quantity = $("#quantity").val();
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(3))
    }

    function total_price_pound() {
        $("#quantity").val(($("#quantity_pound").val() / 2.20462262185).toFixed(4))
        quantity = $("#quantity").val();
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(3))
    }

    function pound_unit_price() {
        var unit_price_pound = $('#unit_price_pound').val();
        $('#unit_price').val((unit_price_pound * 2.20462262185).toFixed(3))
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(3))
    }

    function unit_price_kg() {
        var unit_price_kg = $('#unit_price').val();
        $('#unit_price_pound').val((unit_price_kg / 2.20462262185).toFixed(3))
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(3))
    }

    $(".quantity").on("keyup", function (event) {
        console.log("asd");
    });


    $('#search_company_id').on('change', function () {
        var id = $(this).val();
        $.ajax({
            type: 'get',
            url: '{{ url('company_supplier_search') }}/' + id,
            success: function (data) {
                $('#search_supplier_id').html(data);
            }
        });
    });
</script>
