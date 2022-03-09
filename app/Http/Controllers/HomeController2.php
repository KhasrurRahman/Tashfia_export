<?php

namespace App\Http\Controllers;


use App\Models\ModelProduct;
use App\Models\salesDepartmentModel;
use App\SalesExecutiveModel;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class HomeController2 extends Controller
{
    public function bar_code()
    {
        $product = ModelProduct::find(9);
        return view('layouts.backend.Bar_code.bar_code', compact('product'));
    }

    public function paf_generate(Request $request)
    {
        $product = ModelProduct::find($request->bar_code_product_id);
        $qty = $request->quantity;
        return view('layouts.backend.product.product_pdf',compact('product','qty'));
//        $pdf = PDF::loadView('layouts.backend.product.product_pdf', compact('product','qty'));
        return $pdf->download('product.pdf');
    }

    public function invoice()
    {
        return view('layouts.backend.stock_department.invoice');
    }

    public function test()
    {
        $data = ModelProduct::query()->select('stock.*', 'products.chalan_no')->join('purchase', 'purchase.product_id', '=', 'products.id')->join('stock', 'stock.purchase_id', '=', 'purchase.id')->get();

        return $data;

        $data = ModelProduct::query()
                ->select('products.chalan_no','products.card_no','stock.quantity','stock.id')
                ->leftJoin('purchase', 'purchase.product_id', '=', 'products.id')
                ->leftJoin('stock', 'stock.purchase_id', '=', 'purchase.id')
//                ->orWhere('chalan_no', 'like', '%' . $query . '%')
//                ->orWhere('card_no', 'like', '%' . $query . '%')
                ->get();

        return $data;


//        Artisan::call('UpdateClosingBalance');
//        dd(now());
    }

}
