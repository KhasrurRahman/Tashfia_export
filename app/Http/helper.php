<?php

use App\InitialCacheModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Carbon;

function role_name()
{
    $role_name = \Illuminate\Support\Facades\Auth::user()->role->slag;
    return $role_name;
}

function user_id()
{
    $user_id = \Illuminate\Support\Facades\Auth::user()->id;
    return $user_id;
}

function role_id()
{
    $user_id = \Illuminate\Support\Facades\Auth::user()->role->id;
    return $user_id;
}

function menu_check($value)
{
    $route = \Illuminate\Support\Facades\DB::table('dynamic_routes')->leftJoin('permission_roles', 'dynamic_routes.id', '=', 'permission_roles.dynamic_route_id')->select('dynamic_routes.*', 'permission_roles.url as permission_url');
    $total_access = $route->where('role_id', role_id())->where('show_in_menu', 1)->where('model_name', '=', $value)->get();
    return $total_access;
}

function get_parent_menu()
{
    $segment = request()->segment(3) ? request()->segment(2) . '/' . request()->segment(3) : request()->segment(2);
    $route = \App\dynamic_route::where('url', $segment)->first();
    return isset($route->menu->parent) ? $route->menu->parent->id : '';

}

function check_initial_balance_status()
{
    return InitialCacheModel::where('date',Carbon::now()->toDateString())->first()->status;
}

function redirect_after_check_opening_balance()
{
    if (check_initial_balance_status() == 0)
    {
        Toastr::error('please Update Opening balance for purchase or sale', 'Update Opening Balance');
        return redirect()->route('admin.adminDashboard');
    }
}




