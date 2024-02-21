<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\User;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
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
         $wishlist = Wishlist::where('user_id', Auth::id())->get();
        if(Auth::check()){
        $produits_cart =$user->produits_panier()->get();
        return view('produit',compact('produit','produits_cart','wishlist'));

        }else{
            return view('produit',compact('produit','wishlist'));

        }
       
    }
    public function search(Request $request){
        $input = $request->input('input');

       
        $produits = Produit::all();
        $wishlist = Wishlist::where('user_id', Auth::id())->get();


        if ($input == "all"){
            return view('components.search',compact('produits','wishlist'));
               
 
        }else{
            $produits = DB::table('produits')->select('*')->where('title', 'like', '%' . $input . '%')->orWhere('prix', 'like','%'.$input.'%')->get();
            return view('components.search',compact('produits','wishlist'));
        }
        

    }
}
