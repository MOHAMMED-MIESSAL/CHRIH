<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use Illuminate\Http\Request;
use App\Models\Produit;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    public function add_cart($produit_id){
        Cart::create([
            'user_id'=> Auth::id(),
            'produit_id'=> $produit_id,
        ]);
        return redirect()->route('cart');
    }
    public function cart(){
        return view('panier');
    }
}
