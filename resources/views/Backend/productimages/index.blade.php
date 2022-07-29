@extends('layouts.master') 
@section('Content')
<table class="table table-bordered table-sm">
  <h5 class="float-end"><a href="{{route('products.index',$products[0]->products_id)}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Geri Dön</a></h5>
        <tr>
          <th>image Url</th>
          <th>Alt</th>
          <th>Seq</th>
          <th>Durum</th>
          <th>İşlemler</th>
        </tr>
      </thead>
      <tbody>

@foreach ($products as $item)
<tr>
    <td>{{$item->image_url}}</td>
    <td>{{$item->alt}}</td>
    <td>{{$item->seq}}</td>
    <td>@if($item->is_active=='1')<span class="badge bg-success">Aktif</span>@else <span class="badge bg-warning">Pasif</span>@endif</td>
    <td>
    <a href="{{route('products.edit',$item->products_id)}}" class="btn btn-sm btn-primary"><i class=" fa fa-edit"></i></a>
      <a href="{{route('products.destroy',$item->products_id)}}" class="btn btn-sm btn-danger"><i class=" fa fa-times"></i></a>
    </td>
  </tr>  
@endforeach

</tbody>
</table>
@endsection