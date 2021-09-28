<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog mt-0 mb-0" role="document">
        <div class="modal-content">
            <form action="" method="post" id="save_info">
                <div class="modal-header">
                    <h5 class="modal-title" id="add_buttonLabel">Create @yield('title')</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="Route_name">Date</label>
                        <input type="date" class="form-control" name="date">
                        <span id="Error_status_date" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Buyer</label>
                        <input type="text" class="form-control" name="buyer">
                        <span id="Error_status_buyer" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">quantity</label>
                        <input type="number" class="form-control" name="quantity">
                        <span id="Error_status_quantity" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Roll</label>
                        <input type="text" class="form-control" name="roll">
                        <span id="Error_status_roll" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">lot</label>
                        <input type="text" class="form-control" name="lot">
                        <span id="Error_status_lot" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">sell</label>
                        <input type="number" class="form-control" name="sell">
                        <span id="Error_status_sell" class="text-red error_field"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-secondary">save</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>
