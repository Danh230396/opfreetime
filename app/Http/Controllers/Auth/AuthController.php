<?php

namespace App\Http\Controllers\Auth;

use Auth;
use Hash;
use File;
use App\User;
use App\City;
use Validator;
use Illuminate\Http\Request;
use App\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    function getRegister()
    {
        return view('auth.register');
    }

    function postRegister(Request $request){
        $user = new User;
        $user->fullname = $request->fullname;
        $user->email = $request->email;
        $user->birthday = $request->birthday;
        $user->password = hash::make($request->password);
        $user->remember_token = $request->_token;
        $user->city_id = 1;
        $user->district_id = 1;
        $user->save();
    }

    function getLogin(){
        return view('auth.login');
    }

    public function postLogin(Request $request){
        $dataLogin = ['email' => $request->email, 'password' => $request->password];
        return $this->login($request);
    }

    
}