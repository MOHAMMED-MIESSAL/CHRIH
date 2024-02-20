<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\RegisterRequest;

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
      // return view('profile');
    }
}
