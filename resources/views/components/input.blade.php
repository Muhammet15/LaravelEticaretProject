<div class="mb-3">
  <label for="{{$field}}" class="form-label">{{$label}}</label>
  <input type="{{$type}}" class="form-control" 
  placeholder="{{$placeholder}}" 
  value="{{old("$field")}}" 
  id="{{$field}}" 
  name="{{$field}}" required>
</div>