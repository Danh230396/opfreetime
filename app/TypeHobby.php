<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeHobby extends Model
{
    //
   	protected $table = 'type_hobbies';
    protected $fillable = ['name','description'];
    public $timestamps = true;
    function getHobby(){
    	return $this->hasMany('App\Hobby');
    }
}
