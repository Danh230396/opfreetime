<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Friend extends Model
{
     //
   	protected $table = 'friends';
    protected $fillable = ['user_id1','user_id2', 'status'];
    public $timestamps = true;
    
}
