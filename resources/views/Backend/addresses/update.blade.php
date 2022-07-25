@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('address.update',[$adr->user_id,'address'])}}" >
  @method('PUT')
    @csrf
    <div class="mb-3">
      <label for="name" class="form-label">Şehir</label>
      <input type="text" class="form-control" value="{{$adr->city}}"  id="city" name="city"  required>
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Semt</label>
        <input type="text" class="form-control" value="{{$adr->district}}"  id="district" name="district"  required>
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Posta Kodu</label>
        <input type="text" class="form-control" value="{{$adr->zipcode}}"  id="zipcode" name="zipcode" required>
    </div>
    <div class="mb-3">
        <label for="name" class="form-label">Adres</label>
        <textarea type="text" class="form-control"   id="address" name="address"  required>{{$adr->address}}</textarea>
    </div>
    <div class="col-md-6">
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" name=" is_default" value="1"  id=" is_default">
            <label class="form-check-label"  for="is_active" >Default</label>
        </div>
        <input style="visibility: hidden" type="text" class="form-control" value="{{$adr->address_id}}"  id="address_id"  name="address_id" required>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection