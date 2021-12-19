<div class="modal fade" id="add_wal_in_customer" tabindex="-1" role="dialog"
    aria-labelledby="add_wal_in_customerTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="add_wal_in_customerTitle">Add Walk in Customer</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="edit_model_content">
                <form action="" method="post" id="wal_in_customer__form">
                @csrf
                    <div class="form-group">
                        <label for="Route_name">Customer Name</label>
                        <input type="text" class="form-control" name="customer_name" required>
                        <span id="Errorpo_status_customer_name" class="text-red error_field"></span>
                    </div>


                    <div class="form-group">
                        <label for="Route_name">Customer Phone</label>
                        <input type="text" class="form-control" name="customer_phone">
                        <span id="Errorpo_status_customer_phone" class="text-red error_field"></span>
                    </div>
                    
                    
                    <div class="form-group">
                        <label for="Route_name">Customer Address</label>
                        <input type="text" class="form-control" name="customer_address">
                        <span id="Errorpo_status_customer_address" class="text-red error_field"></span>
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
