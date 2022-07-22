<body>
<div class="container-fluid fixed " style="padding:0 ">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark " style="height:9vh">
            <div class="container-fluid">
              <a class="navbar-brand" href="{{route('user.index')}}">Panel</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Pages
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              
                
              </div>

    </nav>
</div>
<div class="container-fluid fixed w-100" style="height:91vh; padding:0">
<div class="row">
<div class="col-md-2" style="height:100vh">
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 100%;  width:100%" >
        <ul class="nav navbar-nav flex-sm-column mb-auto ">
            <li class="nav-item active">
                <a class="nav-link py-3 px-2 fs-5" href="{{route('user.index')}}">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link py-3 px-2 fs-5" href="#">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link py-3 px-2 fs-5" href="#">Portfolio</a>
            </li>
            <li class="nav-item">
               <a class="nav-link py-3 px-2 fs-5" href="#">Contact</a>
            </li>
        </ul>
    </nav>
</div>
<div class="col-md-10 mt-3"  style="height:100vh">
  <h4>Panel Content</h4>
   <hr>
