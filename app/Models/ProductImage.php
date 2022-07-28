<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;

    protected $primaryKey="image_id";
    protected $fillable=[
        'image_id',
        'products_id',
        'image_url',
        'alt',
        'seq',
        'is_active',
    ];
}
