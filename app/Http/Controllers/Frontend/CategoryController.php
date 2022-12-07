<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function index(Category $category){
        
        $categories = Category::all()->where("is_active",true);
        $products =  $category->category;
        return view('frontend.home.index',compact("categories","products"));
    }
}
