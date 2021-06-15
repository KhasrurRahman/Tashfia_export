<?php

namespace App\Http\Controllers\Admin;

use App\complain;
use App\Http\Controllers\Controller;
use App\Order;
use App\package;
use App\payment;
use App\scratch_card;
use App\subscriber;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use Yajra\DataTables\Facades\DataTables;

class AdminDashboarController extends Controller
{
    public function index()
    {
        return view('layouts.backend.pages.dashboard');
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
