<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClientPermission extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'client_id',
        'deal_id',
        'permissions'
    ];
}
