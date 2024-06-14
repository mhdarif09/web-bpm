<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAdmin
{
    public function handle(Request $request, Closure $next)
    {
        // Assuming you have a way to get the user's access level, adjust this condition accordingly
        if (auth()->check() && auth()->user()->akses_level == 'admin') {
            return $next($request);
        }

        // Redirect or handle unauthorized access
        return redirect('/')->with(['warning' => 'Unauthorized access']);
    }
}

