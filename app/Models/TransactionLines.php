<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TransactionLines extends Model
{

    protected $connection = 'tenant';
    use HasFactory;
}
