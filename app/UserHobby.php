<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserHobby extends Model
{
    protected $table = 'user_hobbies';
    protected $fillable = ['user_id', 'hobby_id', 'aspiration'];
    public $timestamps = true;
    function user(){
    	return $this->belongsTo('App\User');
    }
    function bobby(){
    	return $this->belongsTo('App\Hobby');
    }
}
