<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

use Illuminate\Support\Str;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::get() ?? abort(404,'Userlar bulunamadı');
        return view('Backend.users.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

       return view('Backend.users.insert');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // User::create($request->post(),$request->except([$remember_token,$email_verified_at]));
        User::create($request->post());
        return redirect()->route('user.index');
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
      
        $user = User::find($id) ?? abort(404,'Quiz bulunamadı');
        return view('Backend.users.update',compact('user'));;
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
        if($request->is_admin!="1") $request->request->add(['is_admin'=> '0']); //add request
        if($request->is_active!="1")  $request->request->add(['is_active'=> '0']); //add request
        $user = User::where('user_id',$id)->update($request->except(['_method','_token']));
        return redirect()->route('user.index')->withSuccess('Başarıyla Güncellendi.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id) ?? abort(404,'hata');
        $user->delete();
        return redirect()->route('user.index')->withSuccess('Başarıyla Silindi.');
    }
}
