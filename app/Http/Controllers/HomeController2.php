<?php

namespace App\Http\Controllers;


use App\Models\ModelProduct;
use App\Models\salesDepartmentModel;
use App\SalesExecutiveModel;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
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
//        return view('layouts.backend.product.product_pdf',compact('product','qty'));
        $pdf = PDF::loadView('layouts.backend.product.product_pdf', compact('product','qty'));
        return $pdf->download('product.pdf');
    }

    public function invoice()
    {
        return view('layouts.backend.stock_department.invoice');
    }

    public function test()
    {

//        $query = salesDepartmentModel::with('sales_executive')->whereBetween('created_at', ['2021-12-27', '2021-12-28'])->groupBy('sales_executive_id')->get();


        $query = DB::table('sales_executive_models')
            ->join('sales', 'sales.sales_executive_id', '=', 'sales_executive_models.id')
//            ->whereBetween('sales.created_at', ['2021-12-27', '2021-12-28'])
            ->select('sales_executive_models.name', 'sales.*', DB::raw('SUM(sales.total_price) AS TotalPrice'))
            ->get();


        dd($query);

//        return $query;
//        foreach ($query as $data) {
//            echo $data->sum('total_price');
//        }
//        return $query;
    }

}
