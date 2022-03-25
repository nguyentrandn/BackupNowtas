<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;
use App\Models\Category;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('master',function($view){
            $loai_sp = Category::all();
            $view -> with('loai_sp', $loai_sp);
        });
        
        view()->composer('do_an/phim-bo',function($view){
            $loai_sp_bo = Category::all();
            $view -> with('loai_sp_bo', $loai_sp_bo );
        });

        view()->composer('do_an/phim-le',function($view){
            $loai_sp_le = Category::all();
            $view -> with('loai_sp_le', $loai_sp_le );
        });   
    }
}
