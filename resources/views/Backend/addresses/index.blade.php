@extends('layouts.master') 
@section('Content')
sdsd
@foreach($addrs->addrs as $user)
<tr>
    sss
    <td>{{$user}}</td>
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
@endsection