<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use App\Models\Cart;
use App\Models\CartDetails;
use App\Models\Product;

class CartController extends Controller
{ 
    public function index(Cart $category){
      
        $cart = $this->getOrCreateCart();
        if(Auth::user()->user_id===$cart->user_id)
        {
            $carts = CartDetails::with('product')->where('cart_id',$cart->cart_id)->get();
            return view("frontend.user.index",compact('carts'));
        }
        else{ 
            return view("frontend.user.index",compact('cart'));
        }
    }

    public function add(Product $product, int $quantity=1){
        $cart = $this->getOrCreateCart();
        $details = new CartDetails(
            [
                'cart_id'=>$cart->cart_id,
                'products_id'=>$product->products_id,
                'quantity'=>$quantity,
            ]
            );
            $details->save();
            return redirect('/sepetim');
    }

    private function getOrCreateCart() :Cart
    {
        $user = Auth::user();
        $cart = Cart::firstOrCreate(
            ['user_id'=>$user->user_id],
            ['code'=>Str::random(length:8)]
        );
        return $cart;
    }

    public function remove(CartDetails $cartDetails){
        $cartDetails->delete();
        return redirect('/sepetim');
    }
  
}
