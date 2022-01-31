<style>
    .bar_code div {
        margin-left: 5px;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <div class="card" id="payment">
            <div class="card-body">
                <div class="tab-content">
                    <div class="active tab-pane">
                        <div class="card" id="printMe">
                            <div class="card-header">
                                <h3 class="card-title" style="text-align: center">Product Bar code</h3>
                                <hr>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        @for($i = 0; $i < $qty; $i++)
                                            <div style="width: 260px;text-align: center;float: left" class="bar_code">
                                                <span style="font-size: 12px;margin-left: -76px">{{$product->chalan_no}}</span>
                                                {!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR',1.5,33) !!}
                                                <span>{{$product->card_no}}</span>
                                            </div>
                                        @endfor
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
