<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg mt-0 mb-0" role="document">
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
                        <label for="product_id">Select category</label>
                        <br>
                        <select class="form-control select2" name="expenses_category_id" id="category_id">
                            <option value="">Select</option>
                            @foreach($category as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                            @endforeach
                        </select> 
                        <span id="Error_status_category_id" class="text-red error_field"></span>
                    </div>


                    <div class="form-group">
                        <label for="Route_name">Name</label>
                        <input type="text" class="form-control" name="name">
                        <span id="Error_status_name" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Balance</label>
                        <input type="number" class="form-control" name="balance">
                        <span id="Error_status_balance" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Amount</label>
                        <input type="number" class="form-control" name="Amount">
                        <span id="Error_status_Amount" class="text-red error_field"></span>
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
