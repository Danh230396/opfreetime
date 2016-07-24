<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeNotify extends Model
{
    protected $table = 'type_notifies';
    protected $fillable = ['id','name','description'];
    public $timestamps = true;
    function notify(){
    	return $this->hasMany('App\Notify');
    }
}
