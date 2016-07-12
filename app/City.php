<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    //
   	protected $table = 'cities';
    protected $fillable = ['name','description'];
    public $timestamps = true;
    function district(){
    	return $this->hasMany('App\District');
    }
}
