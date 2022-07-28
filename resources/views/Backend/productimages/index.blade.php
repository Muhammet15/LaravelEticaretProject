@extends('layouts.master') 
@section('Content')
<table class="table table-bordered table-sm">
  <h5 class="float-end"><a href="{{route('user.index')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Geri Dön</a></h5>
        <tr>
          <th>Product Name</th>
          <th>Image Name</th>
          <th>image Url</th>
          <th>Alt</th>
          <th>Seq</th>
          <th>Durum</th>
          <th>İşlemler</th>
        </tr>
      </thead>
      <tbody>

<tr>
    <td></td>
    <td></td>
    {{-- <td>@if($cat->is_active=='1')<span class="badge bg-success">Aktif</span>@else <span class="badge bg-warning">Pasif</span>@endif</td> --}}
    <td>
      {{-- <a href="{{route('products.edit',$cat->products_id)}}" class="btn btn-sm btn-primary"><i class=" fa fa-edit"></i></a>
      <a href="{{route('products.destroy',$cat->products_id)}}" class="btn btn-sm btn-danger"><i class=" fa fa-times"></i></a> --}}
    </td>
  </tr>  


</tbody>
</table>
@endsection