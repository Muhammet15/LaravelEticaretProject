<?php

use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\AddressController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\ProductImageController;
use App\Http\Controllers\Frontend\CategoryController as FrontendCategoryController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\AuthController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\UserController as FrontendUserController;
use App\Models\ProductImage;
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

Route::get('/', [HomeController::class,'index'])->name('profile');
Route::get('/kategori/{category:slug}', [FrontendCategoryController::class,'index']);

Route::get('/giris',[AuthController::class,'signInForm'])->name('giris');
Route::post('/giris',[AuthController::class,'signIn'])->name('girispost');

Route::get('/uye-ol',[AuthController::class,'signUpForm'])->name('uyeol');
Route::post('/uye-ol',[AuthController::class,'signUp'])->name('uyeolpost');

Route::get('/cikis',[AuthController::class,'logout']);

Route::group(["middleware"=>"auth"],function()
{
    Route::get('/sepetim',[CartController::class,'index']); 
    Route::get('/sepete-ekle/{product}',[CartController::class,'add']);
    Route::get('/sepete-sil/{cartDetails}',[CartController::class,'remove'])->name('remove');

});
Route::group(["middleware"=>"auth"],function()
{
    Route::get('user/',[UserController::class,'index'])->name('user.index');
    Route::get('user/{user_id}',[UserController::class,'destroy'])->whereNumber('user_id')->name('user.destroy');
    Route::resource('user',UserController::class);
    
    Route::get('adres/{user_id}/address',[AddressController::class,'index'])->name('address.index');
    Route::get('adres/{user_id}/address/{address_id}',[AddressController::class,'destroy'])->whereNumber('address_id')->name('address.destroy');
    Route::resource('adres/{user_id}/address',AddressController::class);
    
    Route::get('/categories/{category_id}',[CategoryController::class,'destroy'])->whereNumber('category_id')->name('categories.destroy');
    Route::resource('/categories',CategoryController::class);
    
    Route::get('/products/{products_id}',[ProductController::class,'destroy'])->whereNumber('products_id')->name('products.destroy');
    Route::resource('/products',ProductController::class);
    
    Route::get('products/{product}/images/{images_id}',[ProductImageController::class,'destroy'])->whereNumber('images_id')->name('images.destroy');
    Route::resource('/products/{product}/images',ProductImageController::class);
    // Route::get('/adres/{user_id}/address',[AddressController::class,'index'])->name("adres.create");
});

