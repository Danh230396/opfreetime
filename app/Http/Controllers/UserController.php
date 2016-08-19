<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use App\Friend;
use Auth;
use Hash;
use File;
use App\City;
use Validator;
use DB;

class UserController extends Controller
{
	/**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
	
    function viewUserProfile($id){
    	$userProfile = User::where('id', '=', $id)->first()->toArray();
    	$addF = Friend::where('user_id1', '=', Auth::user()->id)->where('user_id2', '=', $userProfile['id'])->get()->toArray();
    	if(count($addF) <= 0){ #neu khong co du lieu nao duoc tim thay, tuc la chua co yeu cau ket ban
    		$status = 0;
    		#chua gui request ket ban
    	}else{
			#da gui yeu cau ket ban, nen khong can hien thi link yeu cau ket ban, hoac da tro thanh ban be
			$status = 1;
    	}
    	$addF = Friend::where('user_id2', '=', Auth::user()->id)->where('user_id1', '=', $userProfile['id'])->where('status', '=', 0)->get()->toArray();
    	if (count($addF) > 0) {#neu status bang 2 thi se hien thi link xac nhan
    		$status = 2;
    	}
    	return view('pages.ho_so_nguoi_dung', compact('userProfile', 'status'));
    }

    function addFriend($id){
    	$friend = new Friend;
    	$friend->user_id1 = Auth::user()->id;
    	$friend->user_id2 = $id;
    	$friend->status = 0;
    	$friend->save();
    	return redirect()->route('viewUserProfile', ['id' => $id]);
    }

    function confirmFriend($id){
    	$user_id = Auth::user()->id;

    	$friend = Friend::where('user_id1', '=', $id)->where('user_id2', '=', $user_id)->where('status', '=', 0)->first();
    	$friend->status = 1;
    	$friend->save();

    	$friend = new Friend;
    	$friend->user_id1 = $user_id;
    	$friend->user_id2 = $id;
    	$friend->status = 1;
    	$friend->save();

    	return redirect()->back();
    }

    function listFriend(){
    	$user_id = Auth::user()->id;
    	$friends = Friend::where('user_id1', '=', $user_id)
    					->where('status', '=', 1)->get()->toArray();
    	$listFriend = array();
    	foreach ($friends as  $value) {
    		$listFriend[] = User::where('id', '=', $value['user_id2'])->first();
    	}
    	$requests = Friend::where('user_id2', '=', $user_id)
    					->where('status', '=', 0)->get()->toArray();
    	$listRequest = array();
    	foreach ($requests as  $value) {
    		$listRequest[] = User::where('id', '=', $value['user_id1'])->first();
    	}				
    	return view('pages.banbe', compact('listFriend', 'listRequest'));
    }


    #chuc nang cap nhat thong tin nguoi dung
    #function getUpdateInfor la de show form ra nguoi dung nhap thong tin vao
    public function getUpdateInfor($id){
        $cities = City::all()->toArray();
        $user  = User::find($id);
        return view('pages.cap_nhat_thong_tin',compact('cities', 'user'));
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
    #ham getFriend se lay tat các bạn bè trong danh sách của người dùng và trả về một json để thực hiện ajax
    function getFriend(){
        $user_id = Auth::user()->id;
        $friends = Friend::where('user_id1', '=', $user_id)
                        ->where('status', '=', 1)->get()->toArray();
        $listFriend = array();
        foreach ($friends as  $value) {
            $listFriend[] = User::select('id', 'fullname', 'image')->where('id', '=', $value['user_id2'])->first();
        }
        return json_encode($listFriend);

    }

    #ham search duoc goi den khi nguoi dung tim kiem mot ai do tren trang cua ho
    function searchFriend($key){
        $user_id = Auth::user()->id;
        $friends = Friend::where('user_id1', '=', $user_id)
                        ->where('status', '=', 1)->get()->toArray();
        $listFriend = array();
        foreach ($friends as  $value) {
            $listFriend[] = User::where('id', '=', $value['user_id2'])->where('users.fullname', 'LIKE', '%'. $key .'%')->first();
        }
        return json_encode($listFriend);
    }
    

}
