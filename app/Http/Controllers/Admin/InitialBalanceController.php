<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\InitialCacheModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Yajra\DataTables\Facades\DataTables;

class InitialBalanceController extends Controller
{
    public function create_initial_balance()
    {
        $data = InitialCacheModel::where('date', Carbon::now()->toDateString())->first();

        return view('layouts.backend.initial_balance.create_initial_balance', compact('data'));
    }

    public function add_initial_balance(Request $request)
    {
        $initial_balance = InitialCacheModel::where('date', $request->date)->first();
        $initial_balance->opening_balance = $request->opening_balance;
        $initial_balance->status = 1;
        $initial_balance->update();

        Toastr::success('Save Successfully', '');
        return redirect()->back();

    }

    public function show_all_opening_and_closing_balance()
    {
        if (check_initial_balance_status() == 0) {
            Toastr::error('please Update Opening balance for purchase or sale,Contact With Accountant', 'Update Opening Balance');
            return redirect()->route('admin.initalBalance/create_initial_balance');
        }
        return view('layouts.backend.initial_balance.all_initial_balance.initial_balance');
    }

    public function search_all_opening_and_closing_balance(Request $request)
    {
        if ($request->ajax()) {
            $query = InitialCacheModel::query();

            if ($request->from_date !== null and $request->to_date !== null) {
                $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
            }

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->with('total_opening_balance', $query->sum('opening_balance'))
                ->make(true);
        }
    }
}
