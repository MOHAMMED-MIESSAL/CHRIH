<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Produit;
use App\Models\Wishlist;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
  public function index(){
    $wishlist = Wishlist::where('user_id', Auth::id())->get();
    return view('wishlist',compact('wishlist'));
  }
  public function add( $id){
   
        $prod_id = $id;
        if(Produit::find($prod_id)){
            $wish = new Wishlist();
            $wish->produit_id = $prod_id;
            $wish->user_id = Auth::id();
            $wish->save();
            return redirect(route('wishlist'));

        }

 

    }
  
}
