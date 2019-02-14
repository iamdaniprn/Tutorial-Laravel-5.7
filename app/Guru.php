<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

//panggil library soft delete
use Illuminate\Database\Eloquent\SoftDeletes;

class Guru extends Model
{
    use SoftDeletes;

    protected $table = "guru";
   	protected $dates = ['deleted_at'];
}
