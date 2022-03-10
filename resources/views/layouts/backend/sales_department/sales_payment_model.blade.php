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
                <form action="" id="pay_bill_form">
                    <input type="hidden" id="pay_bill_sales_id" name="sale_id">
                    @include('layouts.backend.purchase.bank_card')
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Make Payment</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
