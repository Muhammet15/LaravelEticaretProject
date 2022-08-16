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
  <div class="container ">
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
              @auth()
                    <li class="nav-item">
                      <a class="nav-link" href="/sepetim">sepetim</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="/cikis">Çıkış</a>
                    </li>
              @else
                <li class="nav-item">
                  <a class="nav-link" href="{{route('giris')}}">Giriş</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('uyeol')}}">Üye ol</a>
                </li>
              @endauth
              <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

        <div class="row">
            <div class="col-sm-12">
                <strong>Burası ana menü alanı</strong>
            </div>
        </div>    
        <div class="row">
            <div class="col-sm-3">
                <strong>Kategoriler</strong>
                <table class="table table-bordered">
                    @if(count($categories)>0)
                    @foreach($categories as $item)
                        <tr><td><a href="/kategori/{{$item->slug}}">{{$item->name}}</a></td></tr>
                    @endforeach
                    @endif
                </table>
            </div>
            <div class="col-sm-9">
                <strong>Ürünler</strong><br>
                

                    @foreach($products as $item)
                     <div class="card" style="width: 18rem;">
                          @foreach($item->proimage->take(1) as $proimag)<!--array ilk olanı take ile aldık-->
                              <img src="{{$proimag->image_url}}" class="card-img-top" alt="..."> 
                          @endforeach
                        <div class="card-body">
                          <h5 class="card-title">{{$item->name}}</h5>
                          <p class="card-text">{{$item->lead}}</p>
                          <a href="/sepete-ekle/{{$item->products_id}}" class="btn btn-primary">Sepete Ekle</a>
                        </div>
                    </div>
                    @endforeach
              
                {{-- @foreach($products as $item) 
                <div class="card" style="width: 18rem;">
                       @foreach($item->proimage as $key)
                       <img src="{{$key->image_url}}" class="card-img-top" alt="...">
                       @endforeach
                       <div class="card-body">
                         <h5 class="card-title">{{$item->name}}</h5>
                         @foreach($item->proimage as $key)
                         <p class="card-text">{{$key->alt}}</p>
                         @endforeach
                         <a href="#" class="btn btn-primary">Go somewhere</a>
                       </div>
                   </div>
                   @endforeach --}}
                </table>
            </div>
        </div>    
    </div> 
</body>
</html>