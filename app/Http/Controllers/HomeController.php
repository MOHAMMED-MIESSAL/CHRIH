<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\User;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function home(){
        $produits = Produit::paginate(8);
        $wishlist = Wishlist::where('user_id', Auth::id())->get();
        return view('welcome',compact('produits','wishlist'));
    }
    public function produit(int $id){
        $produit=Produit::find($id);
        $user=Auth::user();
        $produits_cart =$user->produits_panier()->get();
        return view('produit',compact('produit','produits_cart'));
    }
}
