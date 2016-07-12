<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\City;
use App\District;
use App\User;
use App\FreeTime;
use App\TypeHobby;
use App\Hobby;
use Auth;
use DB;

class SearchController extends Controller
{
    function getSearch(){
    	$cities = City::all()->toArray();
    	$type_hobby = TypeHobby::all();
    	return view('search.getKey', compact('cities', 'type_hobby'));
    }

    function postSearch(){
        
    }

  
    function resultSearch(Request $request){
        $startTime = $request->hStart + $request->mStart;
        $endTime = $request->hEnd + $request->mEnd;
        $users = DB::table('users')
        ->join('user_hobbies','user_hobbies.user_id', '=', 'users.id')
        ->join('fixed_times','fixed_times.user_id', '=', 'users.id')
        ->where('users.city_id', '=',  $request->city)
        ->where('users.district_id', '=', $request->district)
        ->where('users.id', '<>', Auth::user()->id)
        ->where('user_hobbies.hobby_id', '=', $request->hobby)
        ->where('fixed_times.startTime', '<=', $startTime) //+30
        ->where('fixed_times.endTime', '>=', $endTime)     //-30
        ->select('users.fullname', 'users.email','users.intro', 'users.image', 'users.gender', 'user_hobbies.aspiration', 'users.id', 'users.birthday', 'users.job', 'users.city_id', 'users.district_id')->get();
        return view('search.resultSearch',compact('users'));
    	
  }
}
