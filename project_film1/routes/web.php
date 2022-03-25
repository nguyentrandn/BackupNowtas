<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\homecontroller;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\categoryController;
use App\Http\Controllers\productController;
use App\Http\Middleware\AdminLoginMiddleware;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/search', function () {
    return view('do_an/search');
});
Route::get('/home', function () {
    return view('do_an/home');
});
Route::get('/phim-bo', function () {
    return view('do_an/phim-bo');
});
Route::get('/phim-le', function () {
    return view('do_an/phim-le');
});
Route::get('/chitiet-movie-phim-bo', function () {
    return view('do_an/chitiet-movie-phim-bo');
});
Route::get('/chitiet-movie-phim-le', function () {
    return view('do_an/chitiet-movie-phim-le');
});

Route::get('/index', function () {
    return view('do_an/admin/dashboard/index');
});

Route::get('/chitiet-movie-phim-bo/{id}', [homecontroller::class, 'show'])->name('chitiet-movie-phim-bo');

Route::get('/chitiet-movie-phim-le/{id}', [homecontroller::class, 'show2'])->name('chitiet-movie-phim-le');

Route::get('/Watch/{id}', [homecontroller::class, 'showW1'])->name('watch-le');

Route::get('/home', [homecontroller::class, 'index'])->name('home');

Route::get('/phim-bo', [homecontroller::class, 'index2'])->name('phim-bo');

Route::get('/search',[homecontroller::class, 'getSearch']);



Route::get('/admin/login',[AdminController::class,'getLogin'])->name('getLogin');

Route::post('/admin/login',[AdminController::class,'postLogin'])->name('postLogin');

Route::get('/dangxuat',[AdminController::class,'getLogout'])->name('getlogout');


Route::group(['prefix'=>'admin','middleware'=>'login'],function(){  
    Route::group(['prefix'=>'category'],function(){
         // admin/category
         Route::get('list',[categoryController::class,'getCateList'])->name('admin.getCateList');
         Route::get('add',[categoryController::class,'getCateAdd'])->name('admin.getCateAdd');
         Route::post('add',[categoryController::class,'postCateAdd'])->name('admin.postCateAdd');
         Route::get('delete/{id}',[categoryController::class,'Delete'])->name('admin.getCateDelete');
         Route::get('edit/{id}',[categoryController::class,'getCateEdit'])->name('admin.getCateEdit');
         Route::post('edit/{id}',[categoryController::class,'Update'])->name('admin.postCateEdit');
        
     });
     Route::group(['prefix'=>'user'],function(){
        // admin/user
        Route::get('list',[AdminController::class,'getUserList'])->name('admin.getUser');
        Route::get('add',[AdminController::class,'getSignin'])->name('admin.getsignin');
        Route::post('add',[AdminController::class,'postSignin'])->name('admin.postsignin');
        Route::get('delete/{id}',[AdminController::class,'getUserDelete'])->name('admin.getUserDelete');
        Route::get('edit/{id}',[AdminController::class,'getUserEdit'])->name('admin.getUserEdit');
        Route::post('edit/{id}',[AdminController::class,'postUserEdit'])->name('admin.postUserEdit');
    });
    Route::group(['prefix'=>'product'],function(){
        // admin/product
        Route::get('list',[productController::class,'getProductList'])->name('admin.getProductList');
        Route::get('add',[productController::class,'getProductAdd'])->name('admin.getProductAdd');
        Route::post('add',[productController::class,'postProducAdd'])->name('admin.postProducAdd');
        Route::get('delete/{id}',[productController::class,'Delete'])->name('admin.getProductDelete');
        Route::get('edit/{id}',[productController::class,'getProductEdit'])->name('admin.getProductEdit');
        Route::post('edit/{id}',[productController::class,'Update'])->name('admin.postProductEdit');
        Route::get('search',[productController::class,'search']);
    });
   
        Route::get('home',[AdminController::class,'getHome'])->name('admin.getHome');
        
   
});