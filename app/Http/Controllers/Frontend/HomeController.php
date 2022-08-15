<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class HomeController extends Controller
{
    public function index($categorySlug = ""){
    if(Str::of($categorySlug)->isNotEmpty())
    {
        $selectedCategory = Category::all()->where("is_active",true)->where("slug",$categorySlug)->first();
        $products = $selectedCategory->category->where('is_active',true); // modelde ilişki kurarak hallettim.
        //  $products = Product::all()->where("is_active",true)->where("category_id",$selectedCategory->category_id);  
    }
    else {
     $products = Product::all()->where("is_active",true);
    }
        $categories = Category::all()->where("is_active",true);
        return view('frontend.home.index',compact("categories","products"));
    }
}
