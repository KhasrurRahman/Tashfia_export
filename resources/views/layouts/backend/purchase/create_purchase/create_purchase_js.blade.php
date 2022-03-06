<script>
    $(document).ready(function () {
        $('.select2').select2();
    });

    $(function () {
        $('#product_id').on('change', function () {
            var product_id = $(this).val();
            $.ajax({
                url: "{{ url('admin/product/view') }}/" + product_id,
                type: "GET",
                success: function (data) {
                    $('#details_chalan_no').html(data.chalan_no);
                    $('#details_card_no').html(data.card_no);
                    $('#details_batch_no').html(data.batch_no);
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
                    $('#supplier_details').html('');
                    $('#supplier_details').css("display", "block");
                    $('#supplier_details').append(data);
                }
            });
        });
    });

    function total_price() {
        $("#quantity_pound").val(($("#quantity").val() * 2.20462262185).toFixed(4))
        quantity = $("#quantity").val();
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(4))
    }

    function total_price_pound() {
        $("#quantity").val(($("#quantity_pound").val() / 2.20462262185).toFixed(4))
        quantity = $("#quantity").val();
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(4))
    }

    function pound_unit_price() {
        var unit_price_pound = $('#unit_price_pound').val();
        $('#unit_price').val((unit_price_pound * 2.20462262185).toFixed(4))
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(4))
    }

    function unit_price_kg() {
        var unit_price_kg = $('#unit_price').val();
        $('#unit_price_pound').val((unit_price_kg / 2.20462262185).toFixed(4))
        $("#total_purchas_price").val(($("#unit_price").val() * $("#quantity").val()).toFixed(4))
    }

    function store_sales_data() {
        disableButton()
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

        var bkash_number = [];
        $('.bkash_number').each(function () {
            bkash_number.push(this.value);
        });

        var bkash_trns_id = [];
        $('.bkash_trns_id').each(function () {
            bkash_trns_id.push(this.value);
        });

        var per_cheque_date = [];
        $('.cheque_date').each(function () {
            per_cheque_date.push(this.value);
        });

        var per_role_data = [];
        $('.role').each(function () {
            per_role_data.push(this.value);
        });

        var chalan_no = [];
        $('.chalan_no').each(function () {
            chalan_no.push(this.value);
        });

        $.ajax({
            type: 'post',
            url: '{{ url('admin/sales/store_sales_department_data') }}',
            data: {
                product_id: $("#product_id").val(),
                supplier_id: $("#supplier_id").text(),
                quantity: $("#quantity").text(),
                unit_price: $("#unit_price").val(),
                total_purchas_price: $("#total_purchas_price").val(),
                sub_total: $("#sub_total").val(),
                payment_type: $("#payment_type").val(),
                ban_name: $("#ban_name").val(),
                cheque_number: $("#cheque_number").val(),
                cheque_date: $("#cheque_date").val(),
                bkash_number: $("#bkash_number").val(),
                bkash_trns_id: $("#bkash_trns_id").val(),
                remarks: $("#remarks").val(),
                "_token": "{{ csrf_token() }}",
            },
            success: function (data) {
                if (data.error) {
                    enableeButton()
                    toastr.error(data.error, 'Error');
                } else if (data.success) {
                    document.getElementById('form_submission_button').innerText = 'saved';
                    toastr.success('Sales successfully Completed', 'Updated');
                    window.open(
                        "{{ url('admin/sales/sales_department_invoice') }}/" + data.sales_id, "_blank");
                }
            },
            error: function (response) {
                enableeButton()
                toastr.error(response.responseJSON.errors.customer_id);
                toastr.error(response.responseJSON.errors.stock_id);
                toastr.error(response.responseJSON.errors.grand_total);
                toastr.error(response.responseJSON.errors.per_quantity);
                toastr.error(response.responseJSON.errors.per_unit_price);
                toastr.error(response.responseJSON.errors.per_total_unit_price);
                toastr.error(response.responseJSON.errors.per_payment_type);
                toastr.error(response.responseJSON.errors.per_payment_amount);
                toastr.error(response.responseJSON.errors.sales_executive_id);
                toastr.error(response.responseJSON.errors.labour_bill);
            }
        });
    }

    function disableButton() {
        var btn = document.getElementById('form_submission_button');
        btn.disabled = true;
        btn.innerText = 'Saving....';
    }

    function enableeButton() {
        var btn = document.getElementById('form_submission_button');
        btn.disabled = false;
        btn.innerText = 'Save and continue'
    }

    function customer_details(id) {
        $.ajax({
            url: "{{url('admin/sales/customer_details')}}/" + id,
            type: "GET",
            success: function (data) {
                $('#customer_details').html('');
                $('#customer_details').append(data.customer);
                $("#customer_details").show();
                $('#total_previous_due').html('Total Due:' + data.total_due + 'tk')
            },
            error: function (data) {
            }
        });
    }


</script>
