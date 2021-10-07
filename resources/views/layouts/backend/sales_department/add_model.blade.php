<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg mt-0 mb-0" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="add_buttonLabel">Create @yield('title')</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="msform">
                    <ul id="progressbar">
                        <li class="active">Stock Select</li>
                        <li>Buyer Info</li>
                        <li>Sales Info</li>
                    </ul>
                    <fieldset>
                        <div class="form-group">
                            <label for="product_id">Available Stock</label>
                            <select class="form-control select2" name="stock_id" id="stock_id">
                            <option value="">Select</option>
                            @foreach($stock as $data)
                                <option value="{{$data->id}}">{{$data->product->chalan_no}}, QUN:{{$data->quantity}}</option>
                            @endforeach
                        </select>
                            <span id="Error_status_stock_id" class="text-red error_field"></span>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Sales Rate</label>
                            <input type="number" class="form-control" id="create_sales_rate" readonly>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">Per Unit Price</label>
                            <input type="number" class="form-control" id="create_per_unit_price" readonly>
                        </div>

                        <div class="form-group">
                            <label for="Route_name">quantity</label>
                            <input type="number" class="form-control" id="create_quantity" readonly>
                        </div>
                        
                        <div class="form-group">
                            <label for="Route_name">Balance</label>
                            <input type="number" class="form-control" id="create_balance" readonly>
                        </div>

                        <input type="button" name="next" class="next action-button" value="Next"/>
                    </fieldset>


                    <fieldset>
                        <h2 class="fs-title">Buyer Info</h2>
                        <input type="text" name="fname" placeholder="First Name"/>
                        <input type="text" name="lname" placeholder="Last Name"/>
                        <input type="text" name="phone" placeholder="Phone"/>
                        <textarea name="address" placeholder="Address"></textarea>
                        <input type="button" name="previous" class="previous action-button" value="Previous"/>
                        <input type="button" name="next" class="next action-button" value="Next"/>
                    </fieldset>


                    <fieldset>
                        <h2 class="fs-title">Sales Details</h2>
                        
                        <div class="form-group">
                            <label for="Route_name">Quantity of sell</label>
                            <input type="number" class="form-control" id="quantity_of_sell" name="quantity_of_sell">
                            <span id="Error_quantity_of_sell" class="text-red error_field"></span>
                        </div>
                        
                        <div class="form-group">
                            <label for="Route_name">Unit Price</label>
                            <input type="number" class="form-control" id="unit_price" name="unit_price">
                            <span id="Error_unit_price" class="text-red error_field"></span>
                        </div>
                        
                        <div class="form-group">
                            <label for="Route_name">Total balance</label>
                            <input type="number" class="form-control" id="balance" name="balance" readonly>
                            <span id="Error_balance" class="text-red error_field"></span>
                        </div>
                        
                        <input type="button" name="previous" class="previous action-button" value="Previous"/>
                        <button type="submit" class="btn btn-success btn-lg">save</button>
                    </fieldset>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
