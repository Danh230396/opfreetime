<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notify extends Model
{
    protected $table = 'notifies';
    protected $fillable = ['id','user_id','type_notify_id','user_name','content', 'link'];
    public $timestamps = true;
    function notify(){
    	return $this->belongsTo('App\TypeNotify');
    }
}
