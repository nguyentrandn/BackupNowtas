<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\FundController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\ScreenController;

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

/**
 * AJAX
 */
Route::prefix('/ajax')->group(function () {
    Route::post('/fund.create', [FundController::class, 'create']);
    Route::post('/fund.update.{id}', [FundController::class, 'update']);
    Route::get('/fund.detail.{id}', [FundController::class, 'detail']);
    Route::get('/fund.list', [FundController::class, 'list']);
    Route::post('/fund.upload_csv.application/{fund_id}', [FundController::class, 'uploadCSVFundApplication']);
    Route::get('/fund.upload_csv.application_sample_format', [FundController::class, 'getFormatCSVFundApplication']);


    Route::post('/user.create', [UserController::class, 'create']);
    Route::post('/user.update.{id}', [UserController::class, 'update']);
    Route::get('/user.detail.{id}', [UserController::class, 'detail']);
    Route::get('/user.list', [UserController::class, 'list']);
});

/**
 * Screens
 */
Route::get('', [ScreenController::class, 'renderHomeScreen']);

Route::get('/admin', [ScreenController::class, 'redirectToHomeAdmin']);
Route::get('/{screen}', [ScreenController::class, 'renderScreen']);
Route::get('/{folder}/{screen}', [ScreenController::class, 'renderScreenWithSubFolder']);
Route::get('/{folder1}/{folder2}/{screen}', [ScreenController::class, 'renderScreenWithMultipleSubFolder']);
