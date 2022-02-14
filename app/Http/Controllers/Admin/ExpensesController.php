<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ExpensesCategoryModel;
use App\Models\ExpensesModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class ExpensesController extends Controller
{
    public function expenses_category_index()
    {
        return view('layouts.backend.expenses.category.expenses_category');
    }

    public function expenses_category_search(Request $request)
    {
        if ($request->ajax()) {
            $query = ExpensesCategoryModel::query();

            $query->orderBy('created_at', 'ASC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('remark', function ($data) {
                    return $data->remark;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a>';
                    return $actionBtn;
                })->rawColumns(['name', 'remark', 'action'])
                ->make(true);
        }
    }

    public function expenses_category_store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $request->request->add(['created_by' => Auth::user()->id]);
        ExpensesCategoryModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function expenses_category_delete($id)
    {
        ExpensesCategoryModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }

    public function expenses_index()
    {
        $category = ExpensesCategoryModel::all();
        return view('layouts.backend.expenses.espenses', compact('category'));
    }

    public function expenses_search(Request $request)
    {
        if ($request->ajax()) {
            $query = ExpensesModel::query();
            if ($request->from_date !== null and $request->to_date !== null) {
                $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
            }
             
            $query->whereHas('expenses_category', function ($query2) use ($request) {
                if ($request->search_category_id !== null) {
                    $query2->where('id', $request->search_category_id);
                }
            });

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('Category', function ($data) {
                    return $data->expenses_category->name;
                })->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('remark', function ($data) {
                    return $data->remarks;
                })->addColumn('Amount', function ($data) {
                    return $data->Amount;
                })->addColumn('date', function ($data) {
                    return date("d/M/y", strtotime($data->created_at));
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a>';
                    return $actionBtn;
                })->with('total_amount', $query->sum('Amount'))
                ->rawColumns(['Category', 'name', 'remark', 'Amount', 'date', 'action'])
                ->make(true);
        }
    }

    public function expenses_store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $request->request->add(['created_by' => Auth::user()->id]);
        ExpensesModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function expenses_delete($id)
    {
        ExpensesModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }


}
