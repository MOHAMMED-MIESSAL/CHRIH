<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Http\Controllers\VoyagerAuthController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MollieController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\WishlistController;

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
Route::get('add_cart/{id}', [ProductController::class, 'add_cart'])->name('add_cart');
Route::get('/success', [MollieController::class, 'success'])->name('success');
Route::get('cancel', [MollieController::class, 'cancel'])->name('cancel');

Route::get('/profile',[AuthController::class,'profile'])->name('profile');
Route::get('/home',[HomeController::class,'home'])->name('home');
Route::get('/cart',[ProductController::class,'cart'])->name('cart');
Route::get('/coupon/{coupon}',[ProductController::class,'coupon'])->name('coupon');
Route::get('/',[HomeController::class,'home'])->name('home');
Route::post('/search',[HomeController::class,'search']);
Route::get('/produit/{id}',[HomeController::class,'produit'])->name('produit');
Route::get('/produit/delete/cart/{id}',[ProductController::class,'delete_product_cart'])->name('delete_product_cart');


Route::get('/wishlist',[WishlistController::class,'index'])->name('wishlist');
Route::get('/add_wishlist{wish}',[WishlistController::class,'add'])->name('add_wishlist');
Route::get('/delete_wishlist/{wish}',[WishlistController::class,'delete'])->name('delete_wishlist');


Route::group(['prefix' => 'admin'], function () {   
    Voyager::routes();
});

