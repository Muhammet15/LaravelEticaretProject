@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('images.update',[$products->products_id,$products->image_id])}}" enctype="multipart/form-data"  >
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label for="image_url"  class="form-label">Choose a profile picture:</label>
        <input type="file"  class="form-control" id="image_url" name="image_url" accept="image/png, image/jpeg">
    </div>
    <x-input label="alt" placeholder="{{$products->alt}}" field="alt" type="text" />
    <x-input label="seq" placeholder="{{$products->seq}}" field="seq" type="text" />
    <x-checkbox  label="Yetkili kullanıcı Aktif"  field="is_active"  />
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection