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
        $.ajax({
            type: 'post',
            url: '{{ url('admin/purchase/store') }}',
            data: {
                product_id: $("#product_id").val(),
                supplier_id: $("#supplier_id").val(),
                quantity: $("#quantity").val(),
                unit_price: $("#unit_price").val(),
                total_purchas_price: $("#total_purchas_price").val(),
                actual_purchas_price: $("#actual_purchas_price").val(),
                payment_amount: $("#payment_amount").val(),
                payment_type: $("#payment_type").val(),
                bank_name: $("#bank_name").val(),
                cheque_number: $("#cheque_number").val(),
                cheque_date: $("#cheque_date").val(),
                bkash_number: $("#bkash_number").val(),
                bkash_trns_id: $("#bkash_trns_id").val(),
                remarks: $("#remarks").val(),
                "_token": "{{ csrf_token() }}",
            },
            success: function (data) {
                if (data.custom_error) {
                    enableeButton()
                    toastr.error(data.custom_error, 'Error');
                } else if (data.success) {
                    document.getElementById('form_submission_button').innerText = 'Purchased';
                    toastr.success('Purchase successfully Completed', 'Purchased');
                    window.open("{{ route('admin.purchase/index') }}", "_blank");
                    console.log('sdsd')
                }
            },
            error: function (response) {
                enableeButton()
                toastr.error(response.responseJSON.errors.product_id);
                toastr.error(response.responseJSON.errors.supplier_id);
                toastr.error(response.responseJSON.errors.quantity);
                toastr.error(response.responseJSON.errors.unit_price);
                toastr.error(response.responseJSON.errors.total_purchas_price);
                toastr.error(response.responseJSON.errors.actual_purchas_price);
                toastr.error(response.responseJSON.errors.payment_amount);
                toastr.error(response.responseJSON.errors.payment_type);
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
</script>
