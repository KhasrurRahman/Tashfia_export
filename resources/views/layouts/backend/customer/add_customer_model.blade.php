<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
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
                        <label for="Route_name">name</label>
                        <input type="text" class="form-control" name="name">
                        <span id="Errorpo_status_name" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">phone</label>
                        <input type="text" class="form-control" name="phone">
                        <span id="Errorpo_status_phone" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">address</label>
                        <input type="text" class="form-control" name="address">
                        <span id="Errorpo_status_address" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">email</label>
                        <input type="text" class="form-control" name="email">
                        <span id="Errorpo_status_email" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Company Name</label>
                        <input type="text" class="form-control" name="company_name">
                        <span id="Errorpo_status_company_name" class="text-red error_field"></span>
                    </div>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
