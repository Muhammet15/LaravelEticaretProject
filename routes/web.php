<?php

use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\AddressController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('layouts.master');
});
Route::get('user/',[UserController::class,'index'])->name('user.index');
Route::get('user/{user_id}',[UserController::class,'destroy'])->whereNumber('user_id')->name('user.destroy');
Route::resource('user',UserController::class);
Route::get('adres/{user_id}/address',[AddressController::class,'index'])->name('address.index');
Route::get('adres/{user_id}/address/{address_id}',[AddressController::class,'destroy'])->whereNumber('user_id')->name('address.destroy');
Route::resource('adres/{user_id}/address',AddressController::class);
// Route::get('/adres/{user_id}/address',[AddressController::class,'index'])->name("adres.create");