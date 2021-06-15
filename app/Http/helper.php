<?php

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




