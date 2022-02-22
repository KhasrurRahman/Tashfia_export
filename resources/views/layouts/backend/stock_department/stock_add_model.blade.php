<div class="modal fade" id="add_button" role="dialog" aria-labelledby="add_buttonLabel"
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
                        <label for="product_id">Select Purchase Product</label>
                        <br>
                        <select class="form-control select2" name="purchase_id" id="purchase_id">
                            <option value="">Select</option>
                            @foreach($purchase_product as $data)
                                <option value="{{$data->id}}">{{$data->product->chalan_no}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_purchase_id" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Supplier</label>
                        <input type="text" class="form-control" id="create_supplier" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Product</label>
                        <input type="text" class="form-control" id="create_prodyct" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Quantity(kg)</label>
                        <input type="text" class="form-control" id="create_quantity" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price</label>
                        <input type="text" class="form-control" id="create_unit_price" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Total Purchase Price</label>
                        <input type="text" class="form-control" id="create_total_purchas_price" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">quantity(Kg)</label>
                        <input type="number" step="any" class="form-control" name="quantity" id="input_quantity" min="1">
                        <span id="Error_quantity" class="text-red error_field"></span>
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
