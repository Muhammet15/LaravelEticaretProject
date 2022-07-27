@extends('layouts.master') 
@section('Content')
<table class="table table-bordered table-sm">
  <h5 class="float-end"><a href="{{route('user.index')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Geri Dön</a></h5>
  <h5 class="float-start"><a href="{{route('categories.create')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Kategori Ekle</a></h5>  
  <h5 class="float-center "><a href="{{route('products.create')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus ml-10"></i>Product Ekle</a></h5>
        <tr>
          <th>Kategori Name</th>
          <th>Slug</th>
          <th>Aktif</th>
          <th>Count</th>
          <th>İşlemler</th>
        </tr>
      </thead>
      <tbody>
@foreach($categorys as $cat)
<tr>
    <td>{{$cat->name}}</td>
    <td>{{$cat->slug}}</td>
    <td>{{$cat->is_active}}</td>
    <td>{{$cat->category_count}}</td>
    <td>
      <a href="{{route('products.index',['id'=>$cat->category_id])}}" class="btn btn-sm btn-info"><i class=" fa fa-info"></i></a>
      <a href="{{route('categories.edit',$cat->category_id)}}" class="btn btn-sm btn-primary"><i class=" fa fa-edit"></i></a>
      <a href="{{route('categories.destroy',$cat->category_id)}}" class="btn btn-sm btn-danger"><i class=" fa fa-times"></i></a>
    </td>
  </tr>  
@endforeach 
</tbody>
</table>
@endsection