@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('images.update',[$products->products_id,$products->image_id])}}" enctype="multipart/form-data"  >
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label for="image_url"  class="form-label">Your picture:</label><br>
        @if($products->image_url)
                    <a href="{{asset($products->image_url)}}" target="_blank">
                    <img src="{{asset($products->image_url)}}" style="width:100px">
                    </a>
        @endif
        <input type="file"  class="form-control" id="image_url" name="image_url" accept="image/png, image/jpeg">
    </div>
    
    <x-input label="Açıklama" placeholder="{{$products->alt}}" field="alt" type="text" />
    <x-input label="Sıra no" placeholder="{{$products->seq}}" field="seq" type="text" />
    <x-checkbox  label="Yetkili kullanıcı Aktif"  field="is_active"  />
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection