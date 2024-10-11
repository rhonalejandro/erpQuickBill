<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IpRestrict extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'ip',
        'created_by',
    ];
}
