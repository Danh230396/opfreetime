<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Massage extends Model
{
    protected $table = 'massages';
    protected $fillable = ['id','user_id1','user_id2','msg'];
    public $timestamps = true;
}
