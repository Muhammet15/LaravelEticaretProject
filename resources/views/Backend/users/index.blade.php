@extends('layouts.master') 
@section('Content')
<div class="container-fluid">
<table class="table table-bordered table-sm">
<h5 class="float-end"><a href="{{route('user.create')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i>User Ekle</a></h5>
    <p class="text-dark fw-bold">Users</p>    <thead>
      <tr>

        <th>Name</th>
        <th>Email</th>
        <th>Admin</th>
        <th>Aktif</th>
        <th class="list-item-delete">İşlemler</th>
      </tr>
    </thead>
    <tbody>
    @if(count($users)>0)
    @foreach($users as $user)
    <tr>
        <td>{{$user->name}}</td>
        <td>{{$user->email}}</td>
        <td>{{$user->is_admin}}</td>
        <td>{{$user->is_active}}</td>
        <td>
            <a href="{{route('user.create')}}" class="btn btn-sm btn-info"><i class=" fa fa-info"></i></a>
            <a href="{{route('user.edit',$user->user_id)}}" class="btn btn-sm btn-primary"><i class=" fa fa-edit"></i></a>
            <a href="{{route('user.destroy',$user->user_id)}}" class="btn btn-sm btn-danger"><i class=" fa fa-times"></i></a>
        </td>
      </tr>  
    @endforeach 
    @else
    <tr>
    <td colspan="5" > <p class="text-center"> herhangi bir veri bulunmadı</p></td>
    </tr>
      @endif
    </tbody>
  </table>
</div>
@endsection