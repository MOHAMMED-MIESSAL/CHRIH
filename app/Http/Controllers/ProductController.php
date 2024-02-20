<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Coupon;
use Illuminate\Http\Request;
use App\Models\Produit;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

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
        $user=Auth::user();
        $produits=$user->produits_panier()->get();
        return view('panier',compact('produits'));
    }
    public function coupon($coupon){
        $coupon=Coupon::where('coupon',$coupon)->first();
        if(!$coupon) return false;
        else {
            return true;
        }
    }
}
