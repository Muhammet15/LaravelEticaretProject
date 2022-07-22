@extends('layouts.master') 
@section('Content')
<table class="table table-bordered table-sm">
  <h5 class="float-end"><a href="{{route('user.create')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i>User Ekle</a></h5>
      <p class="text-dark fw-bold">Users</p><thead>
        <tr>
          <th>Name</th>
          <th>Şehir</th>
          <th>district</th>
          <th>zipcode</th>
          <th>address</th>
          <th>is_default</th>
        </tr>
      </thead>
      <tbody>
@foreach($users->addrs as $user)
<tr>
    <td>{{$users->name}}</td>
    <td>{{$user->city}}</td>
    <td>{{$user->district}}</td>
    <td>{{$user->zipcode}}</td>
    <td>{{$user->address}}</td>
    <td>{{$user->is_default}}</td>
  </tr>  
@endforeach 
</tbody>
</table>
@endsection