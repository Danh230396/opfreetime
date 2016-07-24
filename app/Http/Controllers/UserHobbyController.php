<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TypeHobby;
use App\Hobby;
use App\UserHobby;
use App\User;
use Auth;

class UserHobbyController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

    function getAdd(){
    	$type_hobby = TypeHobby::all();
    	return view("pages.them_so_thich", compact('type_hobby'));
    }

    function postAdd(Request $request){
    	for($i = 0; $i <= count($request->hobby_id); $i++){
    		if(!empty($request->hobby_id[$i])){
				$hobby = new UserHobby;
		    	$hobby->user_id = Auth::user()->id;
		    	$hobby->type_hobby_id = $request->type_hobby_id[$i];
		    	$hobby->hobby_id = $request->hobby_id[$i];
		    	$hobby->aspiration = $request->aspiration[$i];
		    	$hobby->save();
    		}
    	}
    	return redirect()->action('UserHobbyController@getList');
	}
    	
    #function dung getList dung để show sở thích của mỗi người dùng
    function getList(){
    	$hobbies = UserHobby::where('user_id', Auth::user()->id)->get()->toArray();
    	// foreach ($hobbies as $value) {
    	// 	$types = Hobby::where('id', $value->hobby_id)->get();
    	// 	$hobbies->type_hobby_id = $types->type_hobby_id;
    	// }
    	return view('pages.view_so_thich', compact('hobbies'));
    }

    
}
