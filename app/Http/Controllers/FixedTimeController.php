<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\FixedTime;
use Auth;

class FixedTimeController extends Controller
{
	#function getAdd la de xuat form ra cho nguoi dung nhap vao
    function getAdd(){
    	return view("freeTime.fixed.add");
    }
    function postAdd($id, Request $request){
    	#vi tat cac cac bien dau vao la thuoc dang array,
    	#nen chung ta phai lap chung de them vao bang du lieu

    	for($i = 0; $i < count($request->hStart); $i++){
            if(!empty($request->hStart[$i])){
                $fixedTime = new FixedTime;
                $fixedTime->user_id = $id;
                $fixedTime->startTime = $request->hStart[$i] + $request->mStart[$i];
                $fixedTime->endTime = $request->hEnd[$i] + $request->mEnd[$i];
                $fixedTime->day = $request->day[$i];
                $fixedTime->date = $request->date[$i];
                $fixedTime->month = $request->month[$i];
                $fixedTime->note = $request->note[$i];
                $fixedTime->save();
               
            }
    	}
         return redirect()->action('FreeTimeController@showFreeTime', Auth::user()->id);
    }
}
