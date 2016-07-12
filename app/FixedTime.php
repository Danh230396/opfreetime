<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FixedTime extends Model
{
    //
   	protected $table = 'fixed_times';
    protected $fillable = ['startTime','endTime', 'day', 'date', 'month'];
    public $timestamps = true;
}
