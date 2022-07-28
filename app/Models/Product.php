<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Cviebrock\EloquentSluggable\Sluggable;
use App\Models\Category;
class Product extends Model
{
    use HasFactory,SoftDeletes,Sluggable;
    protected $primaryKey="products_id";
   
    protected $fillable = [
        'products_id',
        'category_id',
        'name',
        'price',
        'old_price',
        'lead',
        'description',
        'slug',
        'is_active',
    ];
    public function category(){
        // veya return $this->hasMany('App\Models\Address');
         return $this->hasOne(Category::class,"category_id",'category_id');
    }
 
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'name'
            ]
        ];
    }
}
