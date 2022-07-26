@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('user.store')}} "
  oninput='password2.setCustomValidity(password2.value != password.value ? "Passwords do not match." : "")'>
    @csrf
    <x-input label="Ad Soyad" placeholder="ad soyad girinissz" field="name" type="text" />
    
    <x-input label="Email Adress" type="email" placeholder="email giriniz" field="email" aria-describedby="emailHelp" />
    <div id="emailHelp"  class="form-text">We'll never share your email with anyone else.</div>
    
    <x-input label="Şifre giriniz" placeholder="password girinissz" type="password"  field="password"  />
    <x-input label="Tekrar şifre giriniz" placeholder="tekrar password girinissz" type="password" field="password2"  />


    <x-checkbox  label="Yetkili kullanıcı Admin"  field="is_admin"  />

    <x-checkbox  label="Yetkili kullanıcı Aktif"  field="is_active"  />
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection