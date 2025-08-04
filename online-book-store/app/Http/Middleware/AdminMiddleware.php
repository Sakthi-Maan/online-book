<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class AdminMiddleware
{
    public function handle($request, Closure $next)
    {
        $user = Auth::user();

        if (!$user || $user->role !== 'admin') {
            return redirect()->route('login.form')->withErrors(['Access denied: Admins only.']);
        }

        return $next($request);
    }
}
