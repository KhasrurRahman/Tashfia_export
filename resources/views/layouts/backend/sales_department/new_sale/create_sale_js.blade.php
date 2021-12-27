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
            "pageLength": 5,
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
                url: "{{ url('admin/sales/customer_payment_history_search') }}",
                type: 'POSt',
                data: function (d) {
                    d.customer_id = $("#customer_id").val()
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'customer', name: 'customer', searchable: false},
                {data: 'total_unit_price', name: 'total_unit_price'},
                {data: 'quantity_of_sell', name: 'quantity_of_sell'},
                {data: 'payment_type', name: 'payment_type'},
                {data: 'due', name: 'due'},
                {data: 'date', name: 'date'},
                {data: 'action', name: 'action', searchable: false},
            ],
        });
        $('#customer_id').on('change', function (event) {
            event.preventDefault();
            table.draw(true);
            customer_details(this.value)
        });
    });

    $(document).ready(function () {
        $('#country_name').keyup(function () {
            var query = $(this).val();
            if (query != '') {
                var _token = $('input[name="_token"]').val();
                $.ajax({
                    url: "{{ route('sales_item_auto_complete') }}",
                    method: "POST",
                    data: {
                        query: query,
                        _token: _token
                    },
                    success: function (data) {
                        $('#countryList').fadeIn();
                        $('#countryList').html(data);
                    }
                });
            }
        });

        $(document).on('click', 'li', function () {
            event.preventDefault();
            $('#countryList').fadeOut();
            setTimeout(show_total_quantity, 1000);
            setTimeout(show_total_grand_total, 1000);
        });
    });


    function deleteRow(row) {
        document.getElementById('dsTable').deleteRow(row);
        show_total_quantity();
        show_total_grand_total();
    }

    function tableclick(e) {
        if (!e)
            e = window.event;

        if (e.target.value == "Delete")
            deleteRow(e.target.parentNode.parentNode.rowIndex);
    }

    document.getElementById('dsTable').addEventListener('click', tableclick, false);

    function getproductdata(id) {
        $.ajax({
            type: 'get',
            url: '{{ url('get_product_single_data') }}/' + id,
            success: function (data) {
                var markup = "<tr><td>" + data.product.chalan_no +
                    "</td><td><div> <input type='number' value='1' class='qty' name='input_quantity[]' id='qty'> </div></td> <td><input type='number' id='unit_price' class='unit_price'></td><td><input type='text' class='btn btn-sm btn-success total_unit_price' readonly id='total_unit_price' ><input type='hidden' disabled value=" + data.product.id + " class='stock_id'></td><td><input type='button' value='Delete' class='btn btn-sm btn-danger'></td></tr>";
                $("#dsTable tbody").append(markup);
            }
        });
    }


    $(document).on('keyup', '.qty', function () {
        var $row = $(this).closest('tr');
        var unit_price = $row.find('#unit_price').val();
        $row.find('#total_unit_price').val($row.find('#qty').val() * unit_price)
        show_total_quantity();
        show_total_grand_total()
    });

    $(document).on('keyup', '.unit_price', function () {
        var $row = $(this).closest('tr');
        var unit_price = $row.find('#unit_price').val();
        $row.find('#total_unit_price').val($row.find('#qty').val() * unit_price)
        show_total_quantity();
        show_total_grand_total();
    });

    function show_total_quantity() {
        var calculated_total_sum = 0;
        $("#dsTable .qty").each(function () {
            var get_textbox_value = $(this).val();
            if ($.isNumeric(get_textbox_value)) {
                calculated_total_sum += parseFloat(get_textbox_value);
            }
        });
        $("#total_quantity").html(calculated_total_sum);
    };

    function show_total_grand_total() {
        var calculated_total_sum = 0;
        $("#dsTable .total_unit_price").each(function () {
            var get_textbox_value = $(this).val();
            if ($.isNumeric(get_textbox_value)) {
                calculated_total_sum += parseFloat(get_textbox_value);
            }
        });
        $("#grand_total").html(calculated_total_sum);
    };


    function store_sales_data() {
        var stock_id = [];
        $('.stock_id').each(function () {
            stock_id.push(this.value);
        });

        var per_quantity = [];
        $('.qty').each(function () {
            per_quantity.push(this.value);
        });

        var per_unit_price = [];
        $('.unit_price').each(function () {
            per_unit_price.push(this.value);
        });

        var per_total_unit_price = [];
        $('.total_unit_price').each(function () {
            per_total_unit_price.push(this.value);
        });

        var per_payment_amount = [];
        $('.payment_amount').each(function () {
            per_payment_amount.push(this.value);
        });

        var per_payment_type = [];
        $('.payment_type').each(function () {
            per_payment_type.push(this.value);
        });

        var per_remarks = [];
        $('.remarks').each(function () {
            per_remarks.push(this.value);
        });

        var per_cheque_number = [];
        $('.cheque_number').each(function () {
            per_cheque_number.push(this.value);
        });

        var per_cheque_date = [];
        $('.cheque_date').each(function () {
            per_cheque_date.push(this.value);
        });

        $.ajax({
            type: 'post',
            url: '{{ url('admin/sales/store_sales_department_data') }}',
            data: {
                customer_id: $("#customer_id").val(),
                grand_total: $("#grand_total").text(),
                quantity: $("#total_quantity").text(),
                subtotal: $("#sub_total").val(),
                remark: $("#remarks").val(),
                sales_executive_id: $("#sales_executive_id").val(),
                stock_id: stock_id,
                per_quantity: per_quantity,
                per_unit_price: per_unit_price,
                per_total_unit_price: per_total_unit_price,
                per_payment_type: per_payment_type,
                per_payment_amount: per_payment_amount,
                per_remarks: per_remarks,
                per_cheque_number: per_cheque_number,
                per_cheque_date: per_cheque_date,
                "_token": "{{ csrf_token() }}",
            },
            success: function (data) {
                if (data.error) {
                    toastr.error(data.error, 'Error');
                } else {
                    toastr.success('Sales successfullt Completed', 'Updated');
                    window.location.href = "{{ url('admin/sales/show_sales_department') }}";
                }
            },
            error: function (response) {
                toastr.error(response.responseJSON.errors.customer_id);
                toastr.error(response.responseJSON.errors.stock_id);
                toastr.error(response.responseJSON.errors.grand_total);
                toastr.error(response.responseJSON.errors.per_quantity);
                toastr.error(response.responseJSON.errors.per_unit_price);
                toastr.error(response.responseJSON.errors.per_total_unit_price);
                toastr.error(response.responseJSON.errors.per_payment_type);
                toastr.error(response.responseJSON.errors.per_payment_amount);
                toastr.error(response.responseJSON.errors.sales_executive_id);
            }
        });
    }

    function customer_details(id) {
        $.ajax({
            url: "{{url('admin/customer/show')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#customer_details_model_content').html('');
                $('#customer_details_model_content').append(data);
            },
            error: function (data) {
                console.log(data)
            }
        });
    }

    function sales_details(id) {
        $.ajax({
            url: "{{url('admin/sales/sales_details_invoice')}}/" + id,
            type: "GET",
            success: function (data) {
                console.log(data)
                $('#sales_details_model_content').html('');
                $('#sales_details_model_content').append(data);
                $('#sales_details').modal('show');
            },
            error: function (data) {
                console.log(data)
            }
        });
    }


    function show_payment_history() {
        $('#previous_payment_histoty').modal('show');
    }

    function customer_details(id) {
        $.ajax({
            url: "{{url('admin/customer/show')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#customer_details').html('');
                $('#customer_details').append(data);
                $("#customer_details").show();
            },
            error: function (data) {
            }
        });
    }


    // save walk in customer info
    $('#wal_in_customer__form').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/sales/add_walk_in_cuatomer')}}",
            type: "POST",
            data: $(this).serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {

                        $('#add_wal_in_customer').modal('hide');
                        $('#customer_id').append('<option value="' + response.customer_id + '" selected="selected">' + response.customer_name + '</option>');
                        $("#wal_in_customer__form")[0].reset();
                        toastr.success('Walk in customer created', 'created');

                        $("#customer_details").css("display", "none");
                    }
                }
            },
            error: function (response) {
                $('#Error_status_product_id').text(response.responseJSON.errors.product_id);
            }
        });
    })


    function add_payment_mode() {
        var html = '<div class="col-md-8 p-3 m-2" style="background: #6b279b52;border-radius: 1%" id="payment_mode_section"> <div class="row"> <div class="col-md-6"> <div class="form-group"> <label for="product_id">Amount</label> <div class="input-group"> <input type="number" class="form-control payment_amount" name="payment_amount" id="sub_total" required> </div><span id="error_sub_total" class="text-red error_field"></span> </div></div><div class="col-md-6"> <div class="form-group"> <label for="product_id">Payment Type</label> <select class="form-control select2 payment_type" name="payment_type" id="payment_type" onchange="cheque_date_input(this)"> <option value="cache ">cache</option> <option value="Crd ">Card</option> <option value="Cheque">cheque</option> </select> <span id="error_subtotal" class="text-red error_field "></span> </div></div><div class="col-12" id="check_section" style="display: none;border: 1px solid"> <div class="row"> <div class="col-md-6"> <div class="form-group"> <label for="product_id">cheque Number</label> <div class="input-group"> <input type="number" class="form-control cheque_number" name="cheque_number"> </div></div></div><div class="col-md-6"> <div class="form-group"> <label for="product_id">Date</label> <div class="input-group"> <input type="date" class="form-control cheque_number" name="cheque_date"> </div></div></div></div></div><div class="col-md-12"> <div class="form-group"> <label for="product_id">Remarks</label> <div class="input-group"> <textarea name="remarks" id="remarks" style="width:100%" class="remarks"></textarea> </div><span id="error_remarks" class="text-red error_field"></span> </div></div></div></div>';

        $('#multiple_payment_model').append(html);
    }

    
    function cheque_date_input(select) {
        if (select.value === 'Cheque') {            
           $(select).closest('.row').find('#check_section').show(1000);
        } else {
           $(select).closest('.row').find('#check_section').hide(1000);
        }
    }


</script>
