<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeEvent extends Model
{
    protected $table = 'type_events';
    protected $fillable = ['id','name','description'];
    public $timestamps = true;
    function event(){
    	return $this->hasMany('App\Event');
    }
}
