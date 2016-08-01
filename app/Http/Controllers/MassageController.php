<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Massage;
use App\User;
use Auth;

class MassageController extends Controller
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

    function chatRoom(){
    	return view('pages.chat');
    }
    #ham goi xu ly tu nhan va add vao table massage tu ajax goi len
    function sendMassage(Request $request){
    	if($request->ajax()){
    		#nguoi gui la user1
    		$massage = new Massage;
    		$massage->user_id1 = Auth::user()->id;
    		$massage->user_id2 = (int)$request->user_id;
    		$massage->msg = $request->msg;
    		$massage->save();
    	}else{
    		return false;
    	}

    }

    #ham loadMassage se show ra nhung tin nhan ma nguoi dung da nhan voi mot ai do
    function loadMassage($user_id){
    	// $massages = Massage::where(function ($query) {
     //            $query->where('user_id1', '=', Auth::user()->id)
     //                  ->where('user_id2', '=', 8);
     //        })->orWhere(function ($query) {
     //            $query->where('user_id1', '=', 8)
     //                  ->where('user_id2', '=', Auth::user()->id);
     //        })->get()->tojSon();

    	#thuc hien lay thong tin cua user
    	$user = User::select('id','fullname', 'image')->where('id', '=', $user_id)->first();
    	#nguoi gui la user1
    	$twoId = array();
    	$twoId[] =  Auth::user()->id;
    	$twoId[] =  $user->id;
    	$massages = Massage::whereIn('user_id1', $twoId)->whereIn('user_id2', $twoId)->orderBy('id', 'DESC')->get();
    	foreach ($massages as $key => $value) {
    		if($value->user_id1 == $user->id){
    			$value->fullname1 = $user->fullname;
    			$value->image1 = $user->image;
    		}else{
    			$value->fullname1 = Auth::user()->fullname;
    			$value->image1 = Auth::user()->image;
    		}
    	}
    	$massages = json_encode($massages);
    	return $massages;
    }
}
