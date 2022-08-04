<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){

        $categories = Category::all()->where("is_active",true);
        $products = Product::all()->where("is_active",true);
        return view('frontend.home.index',compact("categories","products"));
    }
}
