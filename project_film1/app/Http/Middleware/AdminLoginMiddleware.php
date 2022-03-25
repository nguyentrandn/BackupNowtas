<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; //kiểm tra 
use Illuminate\Support\Facades\Session; 
use Illuminate\Support\Facades\Hash; 
class AdminLoginMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
       
        if(Auth::check()){
             $user=Auth::user();
             return $next($request);
          
        }
        else {
            return redirect('admin/login');
        }
       

    }
}
