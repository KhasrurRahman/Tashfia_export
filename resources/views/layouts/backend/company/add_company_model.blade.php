<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="{{url('admin/company/store')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="add_buttonLabel">Create @yield('title')</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="Route_name">Company Name</label>
                        <input type="text" class="form-control" name="company_name">
                        <span id="error_status_company_name" class="text-red error_field"></span>
                    </div>
                    <div class="form-group">
                        <label for="Route_name">Company address</label>
                        <input type="text" class="form-control" name="company_address">
                        <span id="error_status_company_address" class="text-red error_field"></span>
                    </div>
                    <div class="form-group">
                        <label for="Route_name">Company contact no</label>
                        <input type="number" class="form-control" name="company_contact_no">
                        <span id="error_status_company_contact_no" class="text-red error_field"></span>
                    </div>
                    <div class="form-group">
                        <label for="Route_name">Country</label>
                        <input type="text" class="form-control" name="country">
                        <span id="error_status_country" class="text-red error_field"></span>
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
