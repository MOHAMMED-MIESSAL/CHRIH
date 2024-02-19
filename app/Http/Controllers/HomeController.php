<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home(){
        $produits = Produit::paginate(8);
        return view('welcome',compact('produits'));
    }
    public function produit(int $id){
        $produit=Produit::find($id);
        return view('produit',compact('produit'));
    }
}
