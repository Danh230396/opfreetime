<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hobby extends Model
{
    protected $table = 'hobbies';
    protected $fillable = ['name','description', 'type_hobby_id'];
    public $timestamps = true;
    function type_hobby(){
    	return $this->belongsTo('App\TypeHobby');
    }
}
