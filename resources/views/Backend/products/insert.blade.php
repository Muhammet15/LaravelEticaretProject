@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('products.store')}}" >
    @csrf
    <option selected>Kategoriler</option>
    <select name="category_id" class="form-select" aria-label="Default select example">  
            @foreach($categorys as $cat)      
                <option  value="{{$cat->category_id}}" required>{{$cat->name}}</option>
            @endforeach
               </select>
    <div class="mb-3">
        <label for="name" class="form-label">Product Name</label>
        <input type="text" class="form-control" value="{{old('name')}}"  id="name" name="name"  >
      </div>
      <div class="mb-3">
        <label for="price" class="form-label">Price</label>
        <input type="text" class="form-control" value="{{old('price')}}"  id="price" name="price"  >
      </div>
    <div class="mb-3">
        <label for="old_price" class="form-label">old_price</label>
        <input type="text" class="form-control" value="{{old('old_price')}}"  id="old_price" name="old_price" >
    </div>
    <div class="mb-3">
        <label for="lead" class="form-label">lead</label>
        <input type="text" class="form-control" value="{{old('lead')}}"  id="lead" name="lead" >
    </div>
    <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <input type="text" class="form-control" value="{{old('description')}}"  id="description" name="description" >
    </div>
    <div class="col-md-6">
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" name="is_active" value="1" id="is_active">
            <label class="form-check-label"  for="is_active" >Aktif mi</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endsection