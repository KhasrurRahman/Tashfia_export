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

                total_total_quantity = this.api().ajax.json().total_quantity
                $(api.column(3).footer()).html(
                    total_total_quantity + ' KG'
                );

                total_available_quantity_quantity = this.api().ajax.json().total_available_quantity_quantity
                $(api.column(4).footer()).html(
                    total_available_quantity_quantity + ' KG'
                );

                total_actual_purchas_price = this.api().ajax.json().total_actual_purchas_price
                $(api.column(5).footer()).html(
                    'Tk ' + total_actual_purchas_price
                );

                total_paid = this.api().ajax.json().total_paid
                $(api.column(6).footer()).html(
                    'Tk ' + total_paid
                );

                total_due = this.api().ajax.json().total_due
                $(api.column(7).footer()).html(
                    'Tk ' + total_due
                );

            },
            "order": [
                [1, 'desc']
            ],
            "columnDefs": [{
                "className": "text-left", "targets": "_all", 'orderable': false, 'searchable': false,
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
                    data: 'available_quantity',
                    name: 'available_quantity'
                },
                {
                    data: 'actual_purchas_price',
                    name: 'actual_purchas_price'
                },
                {
                    data: 'payment_amount',
                    name: 'payment_amount'
                }, {
                    data: 'due',
                    name: 'due'
                }, {
                    data: 'payment_status',
                    name: 'payment_status'
                },
                {
                    data: 'action',
                    name: 'action',
                    searchable: false
                },
            ],
        });
        $('#btnFiterSubmitSearch').on('click', function (event) {
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

    function pay_due_bill(id) {
        $('#sales_due_payment').modal('show');
        $('#pay_bill_sales_id').val(id);
    }

    $('#pay_bill_form').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/purchase/purchase_due_payment')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                console.log(response)
                if (response) {
                    if (response.error) {
                        toastr.error(response.error, 'Error');
                    } else {
                        $('#sales_due_payment').modal('hide');
                        $("#pay_bill_form")[0].reset();
                        toastr.success('Payment Successful', 'Successful');
                        $('.yajra-datatable').DataTable().ajax.reload(null, false);
                    }
                }
            }
        });
    })

</script>
