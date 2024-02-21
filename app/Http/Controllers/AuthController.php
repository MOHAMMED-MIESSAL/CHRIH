<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Payment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\RegisterRequest;
use App\Models\Commande;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register_form(){
        return view('Auth.register');
    }
    
    public function register(RegisterRequest $request)
    {
         $form = $request->validated();
       $form['password'] =hash::make($form['password']);
      $user = User::create($form);
        auth()->login($user);
       return redirect('/')->with('success', 'User registered successfully!');
    
    }
    
    public function logout(Request $request )
    {
   
       auth()->logout();
       $request->session()->invalidate();
       $request->session()->regenerateToken();
       return redirect('/');
   
    }
    public function profile(){
      // code
      $user = Auth::user();
      
      $payments=Payment::where('user_id',$user->id)->get();
      // dd($payments);
      return view('profile' , compact('user' , 'payments') );
    }


    // public function afficher_products($payment){ 
    //   $user = Auth::user();

    //   return view('afficher_products' , compact('user' ) );

    // }

    public function afficher_products($payment_id){ 
      $user = Auth::user();
      $payment = Commande::where('numero_commande' ,$payment_id)->get();
  dd($payment);
      if ($payment) {
          $products = $payment->produits; // Assuming the relationship is named 'produits'
          dd($products);
          return view('afficher_products', compact('user', 'products'));
      } else {
          // Handle the case where the payment is not found
          abort(404);
      }
  }
  

  
}
