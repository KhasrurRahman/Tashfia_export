<div class="modal fade" id="sales_due_payment" tabindex="-1" role="dialog" aria-labelledby="sales_due_paymentTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="sales_due_paymentTitle">Pay Due Bill</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="edit_model_content">
                <form action="" method="post" id="pay_bill_form">
                    @csrf
                    <input type="hidden" id="pay_bill_sales_id" name="sale_id">
                    <div class="form-group">
                        <label for="Route_name">Amount</label>
                        <input type="text" class="form-control" name="amount" required>
                    </div>

                    <div class="form-group">
                        <label for="product_id">Payment Type</label>
                        <select class="form-control select2 payment_type" name="payment_type" id="payment_type" required onchange="cheque_date_input(this)">
                            <option value="cache ">cache</option>
                            <option value="card ">Card</option>
                            <option value="Bkash">Bkash</option>
                            <option value="Cheque">Cheque</option>
                        </select>
                    </div>


                    <div class="col-12" id="check_section" style="display: none;border: 1px solid">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="product_id">cheque Number</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control cheque_number" name="cheque_number">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="product_id">Date</label>
                                    <div class="input-group">
                                        <input type="date" class="form-control cheque_date" name="cheque_date">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Update changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
