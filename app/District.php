<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    //
   	protected $table = 'districts';
    protected $fillable = ['name','description', 'city_id'];
    public $timestamps = true;
    function city(){
    	return $this->belongsTo('App\City');
    }
}
