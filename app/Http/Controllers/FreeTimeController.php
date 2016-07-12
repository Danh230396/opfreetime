<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\FixedTime;
use App\User;

class FreeTimeController extends Controller
{
    function showFreeTime($user_id){
    	$fixedTime = User::find($user_id)->fixedTime->toArray();
    	return view('freeTime.show', compact('fixedTime'));
    }
}
