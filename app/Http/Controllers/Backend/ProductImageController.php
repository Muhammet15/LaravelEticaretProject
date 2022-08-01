<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\ProductImage;
class ProductImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {

        // $products = ProductImage::where('products_id',$id)->get()  ?? abort(404,'Ürünler bulunamadı');
        $products = Product::with('proimage')->find($id)  ?? abort(404,'Ürünler bulunamadı');
        return view('Backend.productimages.index',compact('products'));
    }  
       

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {   
        $products = Product::with('proimage')->find($id) ?? abort(404,'ProductImage bulunamadı');
        return view('Backend.productimages.insert',compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$id)
    {
        // return $id;
        if($request->hasFile('image_url')){
            $fileName=Str::slug($request->alt).'.'.$request->image_url->extension();
            $fileNameWithUpload='uploads/'.$fileName;
            $request->image_url->move(public_path('uploads'),$fileName);
            $request->merge([
                'image_url'=>$fileNameWithUpload,
                'products_id'=>$id
            ]); 
        }
        $request->merge([
            'products_id'=>$id
        ]);
        // return $request->post();
        ProductImage::where('products_id',$id)->create($request->post())->get(); 
        $products = Product::with('proimage')->find($id) ?? abort(404,'ProductImage bulunamadı');
        return view('Backend.productimages.index',compact('products'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id,$image_id)
    {
       $products = ProductImage::find($image_id) ?? abort(404,'Quiz bulunamadı');
       return view('Backend.productimages.update',compact('products'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id,$image_id)
    {
        if($request->hasFile('image_url')){
            $fileName=Str::slug($request->alt).'.'.$request->image_url->extension();
            $fileNameWithUpload='uploads/'.$fileName;
            $request->image_url->move(public_path('uploads'),$fileName);
            $request->merge([
                'image_url'=>$fileNameWithUpload,
            ]); 
        }
        $request->merge([
            'products_id'=>$id,
        ]); 
    // return $fileNameWithUpload;
    // return $request->except(['_method','_token']);
    if($request->is_active!="1") $request->request->add(['is_active'=> '0']); //add request
    Product::find($id)->proimage()->where('image_id',$image_id)->first()->update($request->post()) ?? abort(404,'Quiz bulunamadı');
    // ProductImage::where('products_id',$id)->update($request->except(['_method','_token'])) ?? abort(404,'Quiz bulunamadı');
    $products = Product::with('proimage')->find($id) ?? abort(404,'ProductImage bulunamadı');
    return view('Backend.productimages.index',compact('products'));
        


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id,$image_id)
    {
        // return $id."---".$image_id;
        ProductImage::where('products_id',$id)->find($image_id)->delete();
        $products = Product::with('proimage')->find($id) ?? abort(404,'ProductImage bulunamadı');
        return view('Backend.productimages.index',compact('products'));
    }
}
