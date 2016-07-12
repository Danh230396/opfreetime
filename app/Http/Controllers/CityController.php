<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\City;
use App\Http\Requests;

class CityController extends Controller
{
    function getList(){
    	$cities = City::all()->tojSon();
    	return $cities;
    }

    #function gitDistrict la lay tat ca cac quan cua thanh pho co id truyen vao
    function getDistrict($id){
    	$districts = City::find($id)->district->tojSon();
    	return $districts;
    }
  

                  
}
