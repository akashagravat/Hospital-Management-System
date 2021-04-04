<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/hospital.css">
    <link rel="icon" href="image/images.jpg">
    <title>HMS|Locate US</title>
</head>

<body style="background-color: rgb(238, 182, 130);">
    <nav class="navbar navbar-expand-lg navbar-light  " style="background-color: lightcoral;">
        <a class="navbar-brand" href="#">
            <img src="image/images.jpg" width="40" height="40" class="d-inline-block align-top" alt="hospital"> Hospital Management System
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent" float-right>
            <ul class="navbar-nav nav-justify-content-end nav-pills ml-5 ">
                <li class="nav-item active">
                    <a class="btn btn-primary mr-2" href="index.html" role="button">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item font-weight-bold">
                    <a class="btn btn-primary mr-2" href="LocateUs.php" role="button">Locate Us</a>
                </li>
                <li class="nav-item font-weight-bold">
                    <a class="btn btn-primary mr-2" href="news.php" role="button">News</a>
                </li>
                <li class="nav-item font-weight-bold">
                    <a class="btn btn-primary mr-2" href="career.php" role="button">Career</a>
                </li>
                <li class="nav-item font-weight-bold">
                    <a class="btn btn-primary mr-2" href="about.php" role="button">About US</a>
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
    <div class="map"> <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14766.916812694088!2d70.7742188!3d22.2882455!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf077f763eb7b65b0!2sN.m%20Virani%20Wockhardt%20Hospital%20Rajkot!5e0!3m2!1sen!2sin!4v1617268061482!5m2!1sen!2sin"
            width="100%" height="550" style="border: 2px soli rgb(192, 146, 235) ;" allowfullscreen="" loading="lazy">
        </iframe>
    </div>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
