<?php

namespace App\Http\Controllers;



use App\Models\ModelProduct;
use Barryvdh\DomPDF\Facade as PDF;

class HomeController2 extends Controller
{
    public function bar_code()
    {
        $product = ModelProduct::find(9);
        return view('layouts.backend.Bar_code.bar_code',compact('product'));
    }
    
    public function paf_generate($id)
    {
        $product = ModelProduct::find($id);
        $pdf = PDF::loadView('layouts.backend.product.product_pdf', compact('product'));
        
        return $pdf->download('product.pdf');
    }
    
}
