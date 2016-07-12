<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TypeHobby;
use App\Hobby;

class TypeHobbyController extends Controller
{
    public function getHobby($type_hobby_id){
    	$hobbies = TypeHobby::find($type_hobby_id)->getHobby->tojSon();
    	return $hobbies;
    }
}
