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
    return view('welcome');
});
Route::get('user/',[UserController::class,'index'])->name('user.index');
Route::get('user/{user_id}',[UserController::class,'destroy'])->whereNumber('user_id')->name('user.destroy');
Route::resource('user',UserController::class);
Route::resource('/user/{user_id}/address',AddressController::class);