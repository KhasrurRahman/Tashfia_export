<div class="col-12">
    <form id="search_form" name="search_form">
        <div class="row">

            <div class="col-4">
                <div class="form-group">
                    <label>Product Name:</label>
                    <input type="text" class="form-control" id="product_name">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Product Bar code:</label>
                    <input type="text" class="form-control" id="bar_code">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Party name:</label>
                    <input type="text" class="form-control" id="party_name">
                </div>
            </div>

            <div class="col-3">
                <div class="form-group">
                    <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                            style="margin-top: 30px">search
                    </button>
                </div>
            </div>

            <div class="col-1">
                <div class="form-group">
                    <button type="button" class="btn btn-danger btn-info" onclick="form_reset()" style="margin-top: 30px">
                        Clear
                    </button>
                </div>
            </div>
        </div>
    </form>
</div>
