<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="css/hospital.css">
  <link rel="icon" href="image/images.jpg">
  <title>Hospital Management System</title>
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-light fixed-top " style="background-color: lightcoral;">
    <a class="navbar-brand" href="#">
      <img src="image/images.jpg" width="40" height="40" class="d-inline-block align-top" alt="hospital">
      Hospital Management System
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent" float-right>
      <ul class="navbar-nav nav-justify-content-end nav-pills ml-5 ">
        <li class="nav-item active">
          <a class="btn btn-primary mr-2" href="index.php" role="button">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item font-weight-bold">
          <a class="btn btn-primary mr-2" href="LocateUs.php" role="button">Locate Us</a>
        </li>
        <li class="nav-item font-weight-bold">
          <a class="btn btn-primary mr-2" href="#" role="button">News</a>
        </li>
        <li class="nav-item font-weight-bold">
          <a class="btn btn-primary mr-2" href="#" role="button">Career</a>
        </li>
        <li class="nav-item font-weight-bold">
          <a class="btn btn-primary mr-2" href="#" role="button">About US</a>
        </li>
        <li class="nav-item font-weight-bold">
          <a class="btn btn-primary mr-2" href="contact.php" role="button">Contact Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle btn-primary mr-2 font-weight-bold" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Login
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="hms/admin/index.php">Admin Login</a>
            <a class="dropdown-item" href="hms/doctor/index.php">Doctor Login</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="hms/user-login.php">Patient Login</a>
          </div>
        </li>
    </div>
  </nav>


  <main role="main">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="image/slider-image1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="image/slider-image2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="image/slider-image5.jpg" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <div class="clear"></div>


    <div class="row mt-2">

      <div class="patient">
        <div class="pim"> <img src="image/grid-img1.png" alt="patient"></div>
        <div class="pnm">
          <h3 style="color: blue;">Patient</h1>
            <h6 style="color: blue;">Registration & Book appointment</h5>
              <h5 style="color:red;"><a href="hms/user-login.php">Click Here</a>
          </h3>
        </div>
      </div>

      <div class="doctor">
        <div class="dim"> <img src="image/grid-img2.png" alt="doctor"></div>
        <div class="dnm">
          <h3 style="color: blue;">Doctor Login</h1>
            <h5 style="color:red;"><a href="hms/doctor/index.php">Click Here</a>
          </h3>
        </div>
      </div>


      <div class="adm">
        <div class="aim"><img src="image/grid-img3.png" alt="admin"></div>
        <div class="anm">
          <h3 style="color: blue;">Admin Login</h1>
            <h5 style="color: red;"><a href="hms/admin/index.php">Click Here</a>
          </h3>
        </div>
      </div>
    </div>


    <!-- FOOTER -->
    <footer class="container mt-3">
      <ul class="nav-foot">
        <li><a href="index.php">Home</a></li>
        <li><a href="emergency.php">Emergency</a></li>
        <li><a href="LocateUs.php">Locate Us</a></li>
        <li><a href="contact.php">Contact us</a></li>
        <p class="float-right">&copy; 2020 Designed by Akash Agravat</p>
      </ul>
    </footer>

  </main>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>