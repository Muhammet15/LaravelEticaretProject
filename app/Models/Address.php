<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;
    protected $primaryKey="address_id";
    protected $fillable = [
        'address_id',
        'user_id',
        'city',
        'district',
        'zipcode',
        'address',
        'is_default',
    ];
}
