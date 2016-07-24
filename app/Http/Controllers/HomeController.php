<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\User;
use App\Notify;
use App\TypeNotify;
use App\Friend;
use DB;
use Auth;


class HomeController extends Controller
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

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $users = Friend::where('user_id1', Auth::user()->id)->where('status', 1)->select('user_id2')->get()->toArray();
        
        $user_list = [];
        foreach($users AS  $item => $value){
            $user_list[] = $value['user_id2'];
        }
        

        $notifies = DB::table('notifies')->whereIn('user_id', $user_list)->orderBy('id', 'DESC')->get();
        return view('pages.home', compact('notifies', 'user_list'));
    }


}
