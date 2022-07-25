<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Address;
use Illuminate\Http\Request;
use App\Models\User;
class AddressController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $users = User::with('addrs')->find($id) ??abort('404','Quiz bulunamadı');
        // $user = User::get() ?? abort('404','Quiz bulunamadı');
        return view('Backend.addresses.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return "create";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return "store";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return "h";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $adr = Address::find($id) ?? abort(404,'Quiz bulunamadı');
        return view('Backend.addresses.update',compact('adr'));
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
        if($request->is_default!="1") $request->request->add(['is_default'=> '0']); //add request
        Address::where('address_id',$request->address_id)->update($request->except(['_method','_token']));
         return redirect()->route('address.index',$id)->withSuccess('Başarıyla Güncellendi.');
        // return redirect()->route('user.index')->withSuccess('Başarıyla Güncellendi.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id,$address_id)
    {

        // return $id."--".$address_id;
        User::find($id)->addrs()->where('address_id',$address_id)->first()->delete();
        return redirect()->route('address.index',$id)->withSuccess('Başarıyla Silindi.');
    }
}
