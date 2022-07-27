<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\Models\Product;
class Category extends Model
{
    use HasFactory,SoftDeletes; 
    protected $primaryKey = "category_id";
    protected $fillable = [
        "category_id",
        "name",
        "slug",
        "is_active",
    ];
    public function category(){
        // veya return $this->hasMany('App\Models\Address');
         return $this->hasMany(Product::class,"category_id",'category_id');
    }

}
