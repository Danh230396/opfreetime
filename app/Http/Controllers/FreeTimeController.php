<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\FixedTime;
use App\User;

class FreeTimeController extends Controller
{
    function showFreeTime($user_id){
    	$everyDate = FixedTime::where('user_id', '=', $user_id)->where('note','=','date')->get()->toArray();
    	$everyWeek = FixedTime::where('user_id', '=', $user_id)->where('note','=','week')->get()->toArray();
    	$everyMonth = FixedTime::where('user_id', '=', $user_id)->where('note','=','month')->get()->toArray();
    	$everyYear = FixedTime::where('user_id', '=', $user_id)->where('note','=','year')->get()->toArray();
    	return view('pages.view_tg_ranh', compact('everyDate','everyWeek', 'everyMonth', 'everyYear', 'user_id'));
    }
}
