<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="" method="post" id="save_info">
                <div class="modal-header">
                    <h5 class="modal-title" id="add_buttonLabel">Category Info</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="Route_name">Category Name</label>
                        <input type="text" class="form-control" name="product_category_name">
                        <span id="Errorproduct_category_name" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Country Name Bangla</label>
                        <input type="text" class="form-control" name="product_category_name_bn">
                        <span id="Errorcouproduct_category_name_bn" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <div class="form-group">
                            <label for="">Parent Category</label>
                            <select class="form-control select2" name="product_category_parent_id" style="width: 100%;">
                                <option disabled selected>Select Category</option>
                                @foreach($categories as $data)
                                    <option value="{{$data->id}}" selected>{{$data->product_category_name}}</option>
                                @endforeach
                            </select>
                            <span id="Errorcountproduct_category_parent_id" class="text-red error_field"></span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
