@extends('layouts.master') 
@section('Content')
<table class="table table-bordered table-sm">
  <h5 class="float-end"><a href="{{route('user.index')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Geri Dön</a></h5>
  <h5 class="float-start"><a href="{{route('products.create')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i>Product Ekle</a></h5>
        <tr>
          <th>Kategori Name</th>
          <th>Product Name</th>
          <th>Price</th>
          <th>Old Price</th>
          <th>Description</th>
          <th>Slug</th>
          <th>Aktif</th>
          <th>İşlemler</th>
        </tr>
      </thead>
      <tbody>
@foreach($products as $cat)
<tr>

    <td>{{$cat->category->name}}</td>
    <td>{{$cat->name}}</td>
    <td>{{$cat->price}}</td>
    <td>{{$cat->old_price}}</td>
    <td>{{$cat->description}}</td>
    <td>{{$cat->slug}}</td>
    <td>{{$cat->is_active}}</td>
    <td>
      {{-- <a href="{{route('products.index')}}" class="btn btn-sm btn-info"><i class=" fa fa-info"></i></a> --}}
    </td>
  </tr>  

@endforeach 

</tbody>
</table>
@endsection