<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $table = 'events';
    protected $fillable = ['id','user_id','type_event_id','title','content','image','startTime','endTime','date','address'];
    public $timestamps = true;
    function type_event(){
    	return $this->belongsTo('App\TypeEvent');
    }
}
