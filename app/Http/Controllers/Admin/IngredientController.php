<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\IngredientModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class IngredientController extends Controller
{
    public function index()
    {
        return view('layouts.backend.product.ingredient.ingredient');
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = IngredientModel::query();

            $query->orderBy('created_at', 'ASC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a>';
                    return $actionBtn;
                })->rawColumns(['name', 'quantity','action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'quantity' => 'required',
        ]);

        $request->request->add(['created_by' => Auth::user()->id]);
        IngredientModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function delete($id)
    {
        IngredientModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }
}
