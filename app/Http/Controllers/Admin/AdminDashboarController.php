<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\ModelProduct;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\Models\supplierModel;
use App\SalesDetailsModel;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminDashboarController extends Controller
{
    public function index()
    {
        $current_date = date('Y-m-d');
        $fast_date_of_corrent_date = Carbon::now()->firstOfMonth()->toDateString();

        $today_sales = salesDepartmentModel::whereDate('created_at', $current_date)->sum('total_price');
        $today_sales_quantity = SalesDetailsModel::whereDate('created_at', $current_date)->sum('quantity');
        $current_month_sales = salesDepartmentModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('total_price');
        $current_month_sales_quantity = SalesDetailsModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('quantity');

        $todays_purchase_quantity = purchaseModel::whereDate('created_at', $current_date)->sum('quantity');
        $todays_purchase_price = purchaseModel::whereDate('created_at', $current_date)->sum('actual_purchas_price');
        $current_month_purchase_quantity = purchaseModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('quantity');
        $current_month_purchase_price = purchaseModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('actual_purchas_price');

        $todays_sales_due = salesDepartmentModel::whereDate('created_at', $current_date)->sum('total_price');
        $todays_sales_due_quantity = SalesDetailsModel::whereDate('created_at', $current_date)->sum('quantity');
        $current_month_sales_due = salesDepartmentModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('total_price');
        $current_month_sales_due_quantity = SalesDetailsModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('quantity');

        $total_customer = CustomerModel::all()->count();
        $total_supplier = supplierModel::all()->count();

        $last_five_sales_tranjection = SalesPaymentModel::query()->orderBy('created_at','desc')->take(5)->get();


        return view('layouts.backend.dashboard', compact('today_sales', 'today_sales_quantity', 'current_month_sales', 'current_month_sales_quantity','todays_purchase_price','todays_purchase_quantity','current_month_purchase_price','current_month_purchase_quantity','todays_sales_due','todays_sales_due_quantity','current_month_sales_due','current_month_sales_due_quantity','total_customer','total_supplier','last_five_sales_tranjection'));
    }


    public function change_password()
    {
        return view('layouts.backend.change_password.change_password');
    }

    public function save_change_password(Request $request)
    {
        $validatedData = $request->validate([
            'current_password' => 'required|min:6',
            'password' => 'required|string|min:6',
            'password_confirmation' => 'required|same:password',
        ], [
            'current_password.required' => 'Old password is required',
            'current_password.min' => 'Old password needs to have at least 6 characters',
            'password.required' => 'Password is required',
            'password.min' => 'Password needs to have at least 6 characters',
            'password_confirmation.required' => 'Passwords do not match'
        ]);

        $current_password = Auth::User()->password;
        if (Hash::check($request->input('current_password'), $current_password)) {
            $user_id = Auth::User()->id;
            $obj_user = User::find($user_id);
            $obj_user->password = Hash::make($request->input('password'));
            $obj_user->update();
            Toastr::success('Password Save Successfully', 'Changed');
            return redirect()->route('admin.adminDashboard');
        } else {
            Toastr::error('Please enter correct current password', 'Wrong');
            return redirect()->route('admin.admin/change_password');
        }
    }

}
