<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Event;
use App\Notify;
use Auth;

class EventController extends Controller
{
    function getAdd(){
    	return view('pages.tao_su_kien');
    }
    function postAdd(Request $request){
    	$user_id = Auth::user()->id;
    	$user_name = Auth::user()->fullname;

    	$destination = 'resources/upload/images/events/';
    	$fileName = rand().mt_rand().'.'.$request->file('image_event')->getClientOriginalExtension();
    	$request->file('image_event')->move($destination,$fileName);

    	$event = new Event;
    	$event->title = $request->title_event;
    	$event->slug = $request->title_event;
    	$event->content = $request->content_event;
    	$event->image = $fileName;
    	$event->startTime = $request->hStart + $request->mStart;
    	$event->endTime = $request->hEnd + $request->mEnd;
    	$event->date = $request->date_event;
    	$event->address = $request->address_event;
    	$event->user_id = $user_id;
    	$event->type_event_id = $request->type_event;
    	$event->save();

	 	#Tạo ra thông báo
        $notify = new Notify;
        $notify->user_id = $user_id;
        $notify->type_notify_id = 2;
        $notify->user_name = $user_name;
        $notify->content= 'Vừa tạo một sự kiện';
        $notify->link = 'Đường dẫn tạm';
        $notify->save();

        return redirect('/');

    }


  
}
