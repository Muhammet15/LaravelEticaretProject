<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class AuthController extends Controller
{
    public function signInForm()
    {
     return view("frontend.auth.signin_form");
    }
    public function signIn(Request $request)
    {
         $credentials = $request->only(["email","password"]);
         $rememberMe = $request->get("remember-me",false);
         if(Auth::attempt($credentials,$rememberMe))
         {// return Auth::user();
            return redirect(to:"/");
         }
         else {
            return back()->with('error', 'Failed to signin');
         }
    }
    public function signUpForm()
    {
     return view("frontend.auth.signup_form");
    }
    public function signUp(Request $request)
    {
        $data =  $request->post();
        $data['is_active']=true;
        $data['password'] = bcrypt($request->password);
        User::create($data);
         return Redirect::to("/giris");
    }
    public function logout()
    {
      Auth::logout();
      return Redirect::to("/giris");
    }
}
