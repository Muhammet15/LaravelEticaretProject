@extends('layouts.master') 
@section('Content')
<form method="POST" action="{{route('categories.update',$category->category_id)}}">
  @method('PUT')
    @csrf
    <div class="mb-3">
        <label for="name" class="form-label">Kategori Name</label>
        <input type="text" class="form-control" value="{{$category->name}}"  id="name" name="name"  >
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