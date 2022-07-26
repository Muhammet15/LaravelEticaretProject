@extends('layouts.master') 
@section('Content')
<table class="table table-bordered table-sm">
  <h5 class="float-end"><a href="{{route('user.index')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Geri Dön</a></h5>
  <h5 class="float-start"><a href="{{route('address.create',$users->user_id)}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i>Ekleme yap</a></h5>
      <thead>
        <tr>
          <th>Name</th>
          <th>Şehir</th>
          <th>Semt</th>
          <th>Posta kodu</th>
          <th>Adres</th>
          <th>Default Adress</th>
          <th>İşlemler</th>
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
    <td>@if($user->is_default=='1')<span class="badge bg-success">Added</span>@else <span class="badge bg-warning">Default</span>@endif</td>
    <td>

      
      {{-- {{ route(`task.edit`,['project'=>$project->id, 'task' => $task->id]) }}" --}}
      {{-- {{ url("/tasks/{$project->id}/{$task->id}") }} --}}

      {{-- <a href="{{url('adres/'.$user->user_id.'/address')}}" class="btn btn-sm btn-danger"><i class=" fa fa-info"></i></a> --}}
      {{-- <a href="{{route('address.index',$user->user_id)}}" class="btn btn-sm btn-info"><i class=" fa fa-info"></i></a> --}}
      <a href="{{route('address.edit',[$user->address_id,'address'])}}" class="btn btn-sm btn-primary"><i class=" fa fa-edit"></i></a>
      <a href="{{route('address.destroy',[$user->user_id,$user->address_id])}}" class="btn btn-sm btn-danger"><i class=" fa fa-times"></i></a>
    </td>
  </tr>  
@endforeach 
</tbody>
</table>
@endsection