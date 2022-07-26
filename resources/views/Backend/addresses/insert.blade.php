@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('address.store',$user->user_id)}}" >
    @csrf
    <div class="mb-3">
      <label for="name" class="form-label">Şehir</label>
      <input type="text" class="form-control" value="{{old('city')}}"  id="city" name="city"  >
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Semt</label>
        <input type="text" class="form-control" value="{{old('district')}}"  id="district" name="district" >
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Posta Kodu</label>
        <input type="text" class="form-control" value="{{old('zipcode')}}"  id="zipcode" name="zipcode" >
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Adres</label>
        <textarea type="text" class="form-control"   id="address" name="address" >{{old('address')}}</textarea>
    </div>
    <div class="col-md-6">
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" name=" is_default" value="1"  id=" is_default">
            <label class="form-check-label"  for="is_active" >Default</label>
        </div>
        <input type="text" style="visibility: hidden" class="form-check-input" name="user_id"  value="{{$user->user_id}}" id="user_id">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection