<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\IngredientModel;
use App\Models\lotDepartmentModel;
use App\Models\ReadyProductModel;
use App\Models\ModelProduct;
use App\Models\ProductCategoryModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProductController extends Controller
{
    public function create()
    {
        $category = ProductCategoryModel::all();
        $ingredient = IngredientModel::where('quantity', '!=', 0)->get();
        return view('layouts.backend.product.create', compact('category', 'ingredient'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'product_category_id' => 'required',
            'chalan_no' => 'required',
//            'party_name' => 'required',
//            'color_name' => 'required',
//            'open_tube' => 'required',
//            'sl_no' => 'required',
//            'ggsm' => 'required',
//            'yarn_count' => 'required',
//            'yarn_lot_no' => 'required',
//            'fb_rv_date' => 'required',
//            'batch_process_date' => 'required',
//            'lot_no' => 'required',
//            'batch_no' => 'required',
//            'order_no' => 'required',
//            'style_no' => 'required',
//            'finish_gsm' => 'required',
//            'fabric_type' => 'required',
        ]);

        if ($request->product_category_id == 2) {
            $request->validate([
                'ingredient_id' => 'required',
                'quantity' => 'required',
            ]);
        }

        $request->request->add(['card_no' => mt_rand()]);
        $product = ModelProduct::create($request->all());


        if ($request->product_category_id == 2) {
            for ($i = 0; $i < count($request->ingredient_id); $i++) {
                $ingreadient = IngredientModel::find($request->ingredient_id[$i]);
                $ingreadient->quantity -= $request->quantity[$i];
                $ingreadient->update();

                $ingreadient = new ReadyProductModel;
                $ingreadient->product_id = $product->id;
                $ingreadient->ingredient_id = $request->ingredient_id[$i];
                $ingreadient->quantity = $request->quantity[$i];
                $ingreadient->save();
            }
        }
        Toastr::success('product Created Successfully', 'Created');
        return redirect()->back();
    }

    public function index()
    {
        return view('layouts.backend.product.all_product');
    }

    public function alldata(Request $request)
    {
        if ($request->ajax()) {
            $query = ModelProduct::query();
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('chalan_no', function ($data) {
                    return $data->chalan_no;
                })->addColumn('product_type', function ($data) {
                    if ($data->product_category_id == 2) {
                        return '<a href="javascript:void(0)" onclick="view_ingredient(' . $data->id . ')" class="edit btn btn-success btn-sm" >Ingredients</a>';
                    } else {
                        return $data->category->name;
                    }

                })->addColumn('party_name', function ($data) {
                    return $data->party_name;
                })->addColumn('color_name', function ($data) {
                    return $data->color_name;
                })->addColumn('sl_no', function ($data) {
                    return $data->sl_no;
                })->addColumn('ggsm', function ($data) {
                    return $data->ggsm;
                })->addColumn('fb_rv_date', function ($data) {
                    return $data->fb_rv_date;
                })->addColumn('lot_no', function ($data) {
                    return $data->lot_no;
                })->addColumn('batch_no', function ($data) {
                    return $data->batch_no;
                })->addColumn('order_no', function ($data) {
                    return $data->order_no;
                })->addColumn('card_no', function ($data) {
                    return $data->card_no;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="view_modal(' . $data->id . ')" class="edit btn btn-outline-success btn-sm" >View</a> <a href="' . url('paf_generate/' . $data->id) . '"  class="edit btn btn-outline-warning btn-sm" >Print</a>';
                    return $actionBtn;
                })->rawColumns(['product_type', 'chalan_no', 'party_name', 'color_name', 'sl_no', 'ggsm', 'fb_rv_date', 'lot_no', 'batch_no', 'order_no', 'card_no', 'action'])
                ->make(true);
        }
    }


//    <a href="javascript:void(0)" onclick="delete_data(' . $data->id . ')" class="edit btn btn-outline-danger btn-sm" >Delete</a>

    public function view($id)
    {
        return ModelProduct::find($id);
    }

    public function delete($id)
    {
        $product = ModelProduct::find($id);

        return response()->json(['success' => 'Done']);
    }

    public function ingredients($id)
    {
        $ingredients = ReadyProductModel::where('product_id', $id)->get();
        $output = '';
        $data = '';
        foreach ($ingredients as $key => $ingredients_data) {
            $data .= '  <tr>
    <td>' . $key++ . '</td>
    <td>' . $ingredients_data->ingredient->name . '</td>
    <td>' . $ingredients_data->quantity . '</td>
  </tr>';
        }

        $output .= '<table border="1" width="100%">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Quantity</th>
  </tr>
' . $data . '
</table>';
        
        return $output;
    }
}
