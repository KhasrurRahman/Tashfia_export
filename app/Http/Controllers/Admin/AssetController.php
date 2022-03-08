<?php

namespace App\Http\Controllers\Admin;

use App\AssetModel;
use App\Http\Controllers\Controller;
use App\Models\ExpensesCategoryModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\DataTables;

class AssetController extends Controller
{
    public function index()
    {
        $category = ExpensesCategoryModel::all();
        return view('layouts.backend.asset.asset',compact('category'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = AssetModel::query();
            if ($request->from_date !== null and $request->to_date !== null) {
                $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
            }

            if ($request->search_amount !== null) {
                $query->where('Amount', 'like', '%' . $request->search_amount . '%');
            }

            if ($request->search_name !== null) {
                $query->where('name', 'like', '%' . $request->search_name . '%');
            }

            $query->whereHas('category', function ($query2) use ($request) {
                if ($request->search_category_id !== null) {
                    $query2->where('id', $request->search_category_id);
                }
            });

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('Category', function ($data) {
                    return $data->category->name;
                })->addColumn('date', function ($data) {
                    return date("d/M/y", strtotime($data->created_at));
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a>';
                    return $actionBtn;
                })->with('total_amount', $query->sum('Amount'))
                ->rawColumns(['Category', 'date', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'Amount' => 'required',
            'category_id' => 'required',
        ]);

        $request->request->add(['created_by' => Auth::user()->id]);
        AssetModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function delete($id)
    {
        AssetModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }
}
