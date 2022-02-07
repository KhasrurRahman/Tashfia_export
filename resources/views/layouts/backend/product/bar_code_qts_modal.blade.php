<div class="modal fade" id="bar_code_print" role="dialog" aria-labelledby="bar_code_printLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="{{ url('paf_generate') }}" method="post" enctype="multipart/form-data" target="_blank">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="bar_code_printLabel">How many barcode you want to print</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="bar_code_product_id" name="bar_code_product_id">
                    <div class="form-group">
                        <label for="Route_name">Quantity</label>
                        <input type="number" class="form-control" name="quantity" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Generate</button>
                </div>
            </form>
        </div>
    </div>
</div>
