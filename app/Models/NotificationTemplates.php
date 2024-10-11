<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NotificationTemplates extends Model
{

    protected $connection = 'tenant';
    use HasFactory;
    protected $fillable = [
        'name',
        'type',
        'slug',
        'created_by'
    ];
}
