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
        <div class="row">
            <div class="col-sm-12">
                <strong>Burası ana menü alanı</strong>
            </div>
        </div>    
        <div class="row">
            <div class="col-sm-3">
                <strong>Kategoriler</strong>
                <ul>
                    @if(count($categories)>0)
                    @foreach($categories as $item)
                        <li><a href="/kategori/{{$item->slug}}">{{$item->name}}</a></li>
                    @endforeach
                    @endif
                </ul>
            </div>
            <div class="col-sm-9">
                <strong>Ürünler</strong>
                <ul>
                    @if(count($products)>0)
                    @foreach($products as $item)
                        <li>{{$item->name}}</li>
                    @endforeach
                    @endif
                </ul>
            </div>
        </div>    
    </div> 
</body>
</html>