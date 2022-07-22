@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('user.update',$user->user_id)}}">
  @method('PUT')
    @csrf
    <div class="mb-3">
      <label for="name" class="form-label">Ad Soyad</label>
      <input type="text" class="form-control" value="{{$user->name}}"  id="name" name="name" aria-describedby="emailHelp" required>
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email adres</label>
        <input type="email" value="{{$user->email}}" name="email" class="form-control" id="email" aria-describedby="emailHelp" required>
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input"  name="is_admin" value="1" id="is_admin">
                <label class="form-check-label"for="is_admin" >Yetkili kullanıcı Admin</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="is_active" value="1"  id="is_active">
                <label class="form-check-label"  for="is_active" >Yetkili kullanıcı Aktif</label>
            </div>
        </div>
      </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection