<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Http\Controllers\VoyagerAuthController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MollieController;


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

//Auth
Route::get('regsiter/form',[AuthController::class,'register_form'])->name('regiter_form');
Route::post('regsiter',[AuthController::class,'register'])->name('register');
Route::get('logout',[AuthController::class,'logout'])->name('logout');


//Panier
Route::get('/panier', function () {
    return view('panier');
})->name('panier');

//mollie
Route::post('mollie', [MollieController::class, 'mollie'])->name('mollie');
Route::get('success', [MollieController::class, 'success'])->name('success');
Route::get('cancel', [MollieController::class, 'cancel'])->name('cancel');

Route::get('/home',[HomeController::class,'home'])->name('home');
Route::get('/produit/{id}',[HomeController::class,'produit'])->name('produit');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});