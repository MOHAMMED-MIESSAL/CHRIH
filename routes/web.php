<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Http\Controllers\VoyagerAuthController;
use App\Http\Controllers\AuthController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',function () {
    return view('welcome');
});

Route::get('/singlepage', function () {
    return view('singlepage');
});
Route::get('regsiter/form',[AuthController::class,'register_form'])->name('regiter_form');
Route::post('regsiter',[AuthController::class,'register'])->name('register');
Route::get('logout',[AuthController::class,'logout'])->name('logout');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});