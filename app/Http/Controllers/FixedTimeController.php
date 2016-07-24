<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\FixedTime;
use Auth;
use App\Notify;

class FixedTimeController extends Controller
{
	#function getAdd la de xuat form ra cho nguoi dung nhap vao
    function getAdd(){
    	return view("pages.them_tg_co_dinh");
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

    function getEdit($id){
        $time = FixedTime::where('id', $id)->first()->toArray();
        return view('pages.cap_nhat_tg_ranh_co_dinh', compact('time'));
    }
    function postEdit($id, Request $request){
        $fixedTime = FixedTime::find($id);
        $user_id = Auth::user()->id;
        $user_name = Auth::user()->fullname;
        if($fixedTime->user_id == $user_id){
            #Lưa cập nhật
            $fixedTime->startTime = $request->hStart + $request->mStart;
            $fixedTime->endTime = $request->hEnd + $request->mEnd;
            $fixedTime->day = $request->day;
            $fixedTime->date = $request->date;
            $fixedTime->month = $request->month;
            $fixedTime->note = $request->note;
            $fixedTime->save();

            #Tạo ra thông báo
            $notify = new Notify;
            $notify->user_id = $user_id;
            $notify->type_notify_id = 1;
            $notify->user_name = $user_name;
            $notify->content= 'Đã cập nhật thời gian rảnh của anh ấy';
            $notify->link = 'Đường dẫn tạm';
            $notify->save();




           return redirect()->action('FreeTimeController@showFreeTime', $user_id);
        }else{
             return redirect()->back();
        }
       
    }
    function delete($id){
        $fixedTime = FixedTime::find($id);
        if($fixedTime->user_id == Auth::user()->id){
            $fixedTime->delete();
             return redirect()->action('FreeTimeController@showFreeTime', Auth::user()->id);
        }else{
            echo '<script type="text/javascript"> alert("Ban khong duoc phep thuc hien hanh dong nay"); </script>';
            return redirect()->back();
        }
        
    }
}
