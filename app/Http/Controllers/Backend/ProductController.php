<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Product;
use App\Models\Category;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $products = Product::with('category')->where('category_id',$request->id)->get()  ?? abort(404,'Ürünler bulunamadı');
        return view('Backend.products.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorys = Category::get() ?? abort(404,'Kategoriler bulunamadı');
        return view('Backend.products.insert',compact('categorys'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       Product::create($request->post());
       return redirect()->route('categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return "show";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $catnames =  Category::get() ?? abort(404,'Kategoriler bulunamadı');
        $categorys = Product::where('products_id',$id)->first() ?? abort(404,'Kategoriler bulunamadı');
        return view('Backend.products.update',compact('categorys','catnames'));;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if($request->is_active!="1")  $request->request->add(['is_active'=> '0']); //add request
         Product::where('products_id',$id)->update($request->except(['_method','_token']));
        return redirect()->route('categories.index')->withSuccess('Başarıyla Güncellendi.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Product::where('products_id',$id)->delete() ?? abort(404,'hata');
        return redirect()->route('categories.index');
    }
}
