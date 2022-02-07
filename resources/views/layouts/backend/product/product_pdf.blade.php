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
                            <div class="card-body">
                                <br>
                                <br>
                                <div class="col-md-4" id="print_div">
                                    @for($i = 0; $i < $qty; $i++)
                                        <div style="width: 250px;text-align: center;float: left" class="bar_code">
                                            <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->card_no, 'C39',1,80,array(0,0,0), true)}}" alt="barcode"
                                                 style="margin: 10px"
                                                 width="90%"/><br><br>
                                        </div>
                                    @endfor
                                </div>

                                {{--                                <div style="text-align: center;">--}}
                                {{--                                    <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->id, 'C39')}}" alt="barcode"/><br><br>--}}
                                {{--                                    <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->id, 'C39+',1,33,array(0,255,0), true)}}" alt="barcode"/><br><br>--}}
                                {{--                                    <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->id, 'C39+',3,33,array(255,0,0))}}" alt="barcode"/><br><br>--}}
                                {{--                                    <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->id, 'C39+')}}" alt="barcode"/><br><br>--}}
                                {{--                                    <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($product->id, 'POSTNET')}}" alt="barcode"/><br/><br/>--}}
                                {{--                                </div>--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


 <script type="text/javascript">
      window.onload = function() { window.print(); }
 </script>
