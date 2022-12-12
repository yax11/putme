<?php
include("functions.php");

// if_loged_in();
session_start();

if (isset($_POST['reg_number']) and isset($_POST['password'])) {

	if (!empty($_POST['reg_number']) and !empty($_POST['password'])) {
		
		$reg = $_POST['reg_number'];
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "PUTME";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
		  die("Database Connection failed: " . $conn->connect_error);
		}

		$sql = "SELECT email FROM student_application WHERE reg_number = '$reg' ";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			$_SESSION['user'] = $reg;
			go_to_dashboard();
		  // output data of each row
		} else {
			// echo "ERROR";
		  login_error();
		}
		$conn->close();
	}

 }
//else{
// 	echo "Error Connecting to DATABASE";
// }




?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>COE- Student Login</title>


  </head>
  <body>
  	

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #0f321e !important; color: white !important;">
  <a class="navbar-brand" href="https://coeakwanga.edu.ng/">
<!-- Image and text -->
    <img src="assets/logo.png" width="" height="50" class="d-inline-block align-top" alt="" style="background-color: #00a64e;border-radius: 10px;">
  </a>
  <button class="navbar-toggler text-white"  style="color:white !important" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon text-white" style="color:white !important"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <span class="nav-link" style="color:white">STUDENTS PORTAL</span>
      </li>

    </ul>
  </div>
</nav>


  	<div class="container-fluid col-md-6 mt-3 p-3" style="background-color:#0f321e; border-radius: 10px;">

				<form class="m-3" action="" method="POST">
				  <div class="form-group">
				    <label for="exampleInputEmail1" class="text-white">JAMB Registration Number</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Reg. Number" name="reg_number">
				    <small id="emailHelp" class="form-text text-muted"></small>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1" class="text-white">Password</label>
				    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
				  </div>
				  <div class="form-check">
				  </div>
				  <button type="submit" class="btn btn-primary" class="text-white" style="background-color: #00a64e; border-color: #00a64e;">Submit</button>
				</form>

	</div>

<div class="d-flex flex-column" style="position: fixed;bottom: 0px; background-color: #0f321e !important;width: 100%;">
  <div id="page-content">
    <div class="container text-center">
      <div class="row justify-content-center">
        <div class="">
          <h4 class="fw-light text-white">College of Education, Akwanga Nasarawa State</h4>
        </div>
      </div>
    </div>
  </div>
  <footer id="sticky-footer" class="flex-shrink-0 bg-dark text-white-50">
    <div class="container text-center text-white">
      <small>Copyright &copy; 2022</small>
    </div>
  </footer>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>