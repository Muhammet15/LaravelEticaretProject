<!doctype html> 
<html lang="tr">
<head>
    <meta charset="utf-8">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>E-ticaret Yönetim Paneli</title>

</head>
<body>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                  <a class="navbar-brand" href="{{route('profile')}}">Navbar</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="{{route('profile')}}">Home</a>
                      </li>
              
                    </ul>
                  </div>
                </div>
        </nav>
    <div class="container" style="margin-top: 50px" >
      <table class="table table-bordered table-sm">
        <h5 class="float-end"><a href="{{url('/')}}" class="btn btn-sm btn-dark text-white"> <i style="color:white" class="fa fa-plus"></i> Geri Dön</a></h5>
        <tr>
                <th>Fotoğraf</th>
                <th>Product Name</th>
                <th>Adet</th>
                <th>Price</th>
                <th>İşlemler</th>
        </tr>
          {{-- @foreach($detail->proimage->take(1) as $proimag)<!--array ilk olanı take ile aldık-->
                <img src="{{$proimag->image_url}}" class="card-img-top" alt="..."> 
            @endforeach --}}
            <tbody>

              @foreach($carts as $detail)
              {{-- {{$detail}}    --}}
                  <tr>
                  <td style="height: 250px; width:500px">
                    <img src="{{$detail->product->image->image_url}}" class="card-img-top" alt="{{$detail->product->image->alt}}"> 
                  </td>
                  <td>{{$detail->product->name}}</td>
                  <td>{{$detail->product->quantity}}</td> 
                  <td>{{$detail->product->price}}</td> 
                  <td><a href="{{route('remove',$detail->cart_detail_id)}}" class="btn btn-sm btn-danger"><i class=" fa fa-times"></i></a></td>
                  </tr>
             @endforeach
      </tbody>
      </table>
    </div>
</body>
</html>