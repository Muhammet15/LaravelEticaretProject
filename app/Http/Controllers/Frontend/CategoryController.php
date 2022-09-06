<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function index(Category $category){
        return $category;
        $categories = Category::all()->where("is_active",true);
        return $products =  $category->category;
        return view('frontend.home.index',compact("categories","products"));
    }
}
