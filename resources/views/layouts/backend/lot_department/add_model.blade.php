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
                        <label for="product_id">Select Product</label>
                        <br>
                        <select class="form-control select2" name="product_id" id="product_id">
                            <option value="">Select</option>
                            @foreach($products as $data)
                                <option value="{{$data->id}}">{{$data->chalan_no}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_product_id" class="text-red error_field"></span>
                    </div>


                    <div class="form-group">
                        <label for="Route_name">Batch Number </label>
                        <input type="text" class="form-control" name="chalan_no" id="create_chalan_no" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Lot Number </label>
                        <input type="text" class="form-control" name="lot_no" id="create_lot_no" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Party Name </label>
                        <input type="text" class="form-control" name="party_name" id="create_party_name" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Card No</label>
                        <input type="text" class="form-control" name="card_no" id="create_card_no" readonly>
                    </div>


                    <div class="form-group">
                        <label for="Route_name">Order No</label>
                        <input type="text" class="form-control" name="order_no" id="create_order_no" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Color </label>
                        <input type="text" class="form-control" name="color_name" id="create_color_name" readonly>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Gsm </label>
                        <input type="text" class="form-control" name="ggsm" id="create_ggsm" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Sales Unite Price</label>
                        <input type="number" class="form-control" name="sales_rate">
                        <span id="Error_sales_rate" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Purchase Unit Rate</label>
                        <input type="number" class="form-control" name="per_unit_price">
                        <span id="Error_per_unit_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">quantity</label>
                        <input type="number" class="form-control" name="quantity">
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
