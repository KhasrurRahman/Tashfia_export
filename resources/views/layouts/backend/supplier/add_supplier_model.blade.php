<div class="modal hide fade" id="add_button" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form  action="{{url('admin/supplier/store')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="add_buttonLabel">Create @yield('title')</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
               <div class="modal-body">
                   
                   <div class="form-group">
                        <div class="form-group">
                            <label for="">Select Company</label>
                            <select class="form-control select2" name="company_id">
                                <option value="">Please select</option>
                                @foreach($company as $data)
                                    <option value="{{$data->id}}">{{$data->company_name}} ({{$data->company_contact_no}})</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <label for="Route_name">Supplier name</label>
                        <input type="text" class="form-control" name="name" required>
                        <span id="Errorpo_status_name" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Designation</label>
                        <input type="text" class="form-control" name="designation" >
                        <span id="Errorpo_status_designation" class="text-red error_field"></span>
                    </div>
                    
                     <div class="form-group">
                        <label for="Route_name">Nationality</label>
                        <input type="text" class="form-control" name="nationality" >
                        <span id="Errorpo_status_nationality" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Photo</label>
                         <input type="file" name="customer_photo" />
                        <span id="Errorpo_status_photo" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Present address</label>
                        <input type="text" class="form-control" name="present_address" >
                        <span id="Errorpo_status_present_address" class="text-red error_field"></span>
                    </div>
                    
                    
                    <div class="form-group">
                        <label for="Route_name">Permanent address</label>
                        <input type="text" class="form-control" name="permanent_address" >
                        <span id="Errorpo_status_permanent_address" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Personal phone number</label>
                        <input type="number" class="form-control" name="personal_phone" >
                        <span id="Errorpo_status_personal_phone" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Optional phone number</label>
                        <input type="number" class="form-control" name="optional_phone">
                        <span id="Errorpo_status_optional_phone" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">email</label>
                        <input type="text" class="form-control" name="email" >
                        <span id="Errorpo_status_email" class="text-red error_field"></span>
                    </div>
                    
                     <div class="form-group">
                        <label for="Route_name">NID</label>
                        <input type="number" class="form-control" name="nid" >
                        <span id="Errorpo_status_nid" class="text-red error_field"></span>
                    </div>
                   
                    <div class="form-group">
                        <label for="Route_name">Reference</label>
                        <input type="text" class="form-control" name="reference">
                        <span id="Errorpo_status_reference" class="text-red error_field"></span>
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
