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

    #chuc nang cap nhat thong tin nguoi dung
    #function getUpdateInfor la de show form ra nguoi dung nhap thong tin vao
    public function getUpdateInfor($id){
        $cities = City::all()->toArray();
        $user  = User::find($id);
        return view('auth.update.information',compact('cities', 'user'));
    }
    #function postUpdatInfor dung de xu ly du lieu nguoi dung gui len tu form
    public function postUpdateInfor(Request $request){
        $destination = 'resources/upload/images/users/';
        if(!empty($request->file('image'))){
            $fileName = rand().mt_rand().'.'.$request->file('image')->getClientOriginalExtension();
             #thuc hien move file vao folder duoc chi dinh truoc
            $request->file('image')->move($destination,$fileName);
            if (File::exists($destination.$request->image_current))
            {
                File::delete($destination.$request->image_current);
            }
        }else{
            $fileName = $request->image_current;
        }
        $user = User::find($request->id);
        $user->email = $request->email;
        $user->gender = $request->gender;
        $user->city_id = $request->city;
        $user->district_id = $request->district;
        $user->intro = $request->intro;
        $user->image = $fileName;
        $user->education = $request->edu;
        $user->skill = $request->skill;
        $user->job = $request->job;
        $user->save();
        return redirect()->action('HomeController@index');
    }
}