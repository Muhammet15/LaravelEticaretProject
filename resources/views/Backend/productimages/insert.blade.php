@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('images.store',$products->products_id)}}" enctype="multipart/form-data" >
    @csrf
  
    <div class="mb-3">
        <label for="image_url"  class="form-label">Choose a profile picture:</label>
        <input type="file"  class="form-control" id="image_url" name="image_url" accept="image/png, image/jpeg">
    </div>

    {{-- <x-input label="products_id" placeholder="" field="products_id" type="text" /> --}}
    <x-input label="Açıklama" placeholder="Resim adı giriniz" field="alt" type="text" />
    <x-input label="Sıra no" placeholder="Resim sırası" field="seq" type="text" />
    <x-checkbox  label="Yetkili kullanıcı Aktif"  field="is_active"  />
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection