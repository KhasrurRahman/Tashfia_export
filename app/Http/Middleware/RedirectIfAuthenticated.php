<?php

namespace App\Http\Middleware;

use Brian2694\Toastr\Facades\Toastr;
use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @param string|null $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard('subscriber')->check()) { return $next($request); } if (Auth::guard('user')->check() && Auth::user()->type == 'admin') { return redirect('admin/adminDashboard'); } if (Auth::guard('user')->check()) { Toastr::error('you dont have that Permission', 'Permission Denied'); return $next($request); } return $next($request);

    }
}
