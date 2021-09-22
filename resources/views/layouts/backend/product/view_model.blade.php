<div class="modal fade" id="view_modal" tabindex="-1" role="dialog" aria-labelledby="view_modalTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="view_modalTitle">View Product Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="edit_model_content">
                <form action="" method="post" id="update__form">
                    <div id="modal_data">
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="card">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Batch Number : <span id="chalan_no"></span></li>
                                        <li class="list-group-item">Lot Number : <span id="lot_no"></span></li>
                                        <li class="list-group-item">Customer : <span id="party_name"></span></li>
                                        <li class="list-group-item">Color : <span id="color_name"></span></li>
                                        <li class="list-group-item">Gsm : <span id="ggsm"></span></li>
                                        <li class="list-group-item">Roll/ Weight : <span></span></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="card">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Card No : <span id="card_no"></span></li>
                                        <li class="list-group-item">Y. Count :<span id="yarn_count"></span></li>
                                        <li class="list-group-item">Y. Lot :<span id="yarn_lot_no"></span></li>
                                        <li class="list-group-item">s/L :<span id="sl_no"></span></li>
                                        <li class="list-group-item">Order No : <span id="order_no"></span></li>
                                        <li class="list-group-item">Composition : <span></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-success" data-dismiss="modal">Print</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
