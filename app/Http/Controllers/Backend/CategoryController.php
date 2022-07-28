<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorys = Category::withCount('category')->get() ?? abort(404,'Kategoriler bulunamadı');
        return view('Backend.category.index',compact('categorys'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Backend.category.insert');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          Category::create($request->post());
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::find($id) ?? abort(404,'Category bulunamadı');
        return view('Backend.category.update',compact('category'));;
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
        $cat = Category::find($id) ?? abort(404,'Category bulunamadı');
        $cat->slug = null;
        $cat->update(['name' => $request->name]);
        // return $request->post();
        // if($request->is_active!="1")  $request->request->add(['is_active'=> '0']); //add request
        Category::where('category_id',$id)->update($request->except(['_method','_token']));
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
        $category = Category::find($id) ?? abort(404,'hata');
        $category->delete();
        return redirect()->route('categories.index')->withSuccess('Başarıyla Silindi.');
    }
}
