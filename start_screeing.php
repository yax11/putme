<?php
session_start();
include 'functions.php';


if (isset($_SESSION['user'])) {
  $reg = $_SESSION['user'];
  if (putme_completed()) {
  	echo $putme_completed_msg;
  	die();
  }
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "PUTME";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $sql = "SELECT * FROM student_application WHERE reg_number = '$reg' ";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      $row = $result->fetch_array();
      
      $fn = $row['first_name'];
      $ln = $row['last_name'];
      $on = $row['other_name'];
      $email = $row['email'];
      $pn = $row['phone_number'];
      $j1 = $row['jamb_sub_1'];

  } else {
    echo "0 results";
  }
  $conn->close();
 
}else{
	header("Location: ./index.php");
	go_to_login_page();
	die();
}

$subject_options =  <<<END

					        <option value="" selected>Select Subject</option>
					        <option value="mathematics">Mathematics</option>
					        <option value="biology">Biology</option>
					        <option value="chemistry">Chemistry<tion>
					        <option value="physics">Physics</option>
					        <option value="economics">Economics</option>
					        <option value="geography">Geography</option>
					        <option value="government">Government</option>
					        <option value="civic_education">Civic Educations</option>
					        <option value="computer">Computer</option>
					        <option value="CRS">CRS</option>
					        <option value="irs">IRS</option>
					        <option value="mathematics">Mathematics</option>

END;

$grade_options =  <<<END

			<option value="" selected>Select Grade</option>
			<option value="a1">A1 EXCELLENT</option>
			<option value="b2">B2 VERY GOOD</option>
			<option value="b3">B3 GOOD</option>
			<option value="c4">C4 CREDIT</option>
			<option value="c5">C5 CREDIT</option>
			<option value="c6">C6 CREDIT</option>
			<option value="d7">D7 PASS</option>
			<option value="e8">E8 PASS</option>
			<option value="f9">F9 FAIL</option>


END;



?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>SCREENING</title>
  
  <style>
  	
  	body{
  		width: 100%;
  	}

  	div#form-control-ssce, div#form-control-files{
  		border: 1px solid grey;
  	}

  </style>

  </head>
  <body>

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #0f321e !important; color: white !important;">
  <a class="navbar-brand" href="#">
<!-- Image and text -->
    <img src="assets/logo.png" width="" height="50" class="d-inline-block align-top" alt="" style="background-color: #00a64e;border-radius: 10px;">
  </a>
  <button class="navbar-toggler text-white"  style="color:white !important" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon text-white" style="color:white !important"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="dashboard.php" style="color:white">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php" style="color:white">Logout</a>
      </li>

    </ul>
  </div>
</nav>


<h2 class="mx-auto text-center">
  Online Post UTME Screening
</h2>

              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="assets/user1.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4><?php echo $row['last_name']." ".$row['first_name']." ".$row['other_name'];?></h4>
                      <p class="text-secondary mb-1"><?php echo $row['reg_number'];?></p>

                <div class="alert alert-warning bg-warning" role="alert">
                      <h6>Admission status: PROCESSING</h6>
                </div>

<!--                       <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                      <button class="btn btn-primary">Follow</button>
                      <button class="btn btn-outline-primary">Message</button> -->
                    </div>
                  </div>
                </div>
              </div>


		<div>
		  	<div class="container-fluid mx-auto m-3">
			
				<form action="" method="POST" class="m-3" enctype="multipart/form-data">

<div id="form-control-files"  class="p-2 mb-6" >

<h3>File Uploads</h3><br>

		<p><span>File size must NOT EXCEED 1MB</span></p>
	<div class="row">

  <div class="form-group col">
    <label for="">Passport Photograph</label>
    <input type="file" class="form-control-file" id="" name="passport" required>
  </div>

  <div class="form-group col">
    <label for="">Indegene Certificate</label>
    <input type="file" class="form-control-file" id="" name="ind_cert" required>
  </div>

  <div class="form-group col">
    <label for="">Birth Cert./ Declaration of Age</label>
    <input type="file" class="form-control-file" id="" name="birth_cert" required="required">
  </div>

		
	</div>
	
</div>

<div class="mt-10" id="form-control-ssce" >

<h3>O'Level/SSCE Details</h3>
  <div class="form-group col-md-6">
    <label for="">Examination Number</label>
    <input type="text" class="form-control" name="exam_number" placeholder="Examinations Number" required>
  </div>

  <div class="form-group col-md-6">
    <label for="">Examination Center Code</label>
    <input type="text" class="form-control" name="exam_center" placeholder="Examinations Center" required>
  </div>

  <div class="form-group col-md-6">
    <label for="">Examination Year</label>
    <select name="exam_year" class="form-control" required> 
    	<?php
    	for ($year=1990; $year < 2022; $year++) { 
    		echo "<option value='$year'>$year</option>";
    	};
    	?>
    	</select>
  </div>

  <div class="form-group col-md-6">
    <label for="">Examination Type</label>
    <select name="exam_type" class="form-control" required> 
    	<option value="waec">WAEC</option>
    	<option value="neco">NECO</option>
    	<option value="nabteb">NABTEB</option>
    	</select>
  </div>

<div class="col-md-9">
<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Subject</th>
      <th scope="col">Grade</th>
    </tr>
  </thead>
  <tbody>
    
    <tr>
      <th scope="row">1</th>
      <td><select name="subject_1" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_1" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">2</th>
      <td><select name="subject_2" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_2" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">3</th>
      <td><select name="subject_3" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_3" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">4</th>
      <td><select name="subject_4" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_4" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">5</th>
      <td>
      	<select name="subject_5" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_5" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">6</th>
      <td><select name="subject_6" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_6" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">7</th>
      <td><select name="subject_7" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_7" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">8</th>
      <td><select name="subject_8" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_8" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>
    
    <tr>
      <th scope="row">9</th>
      <td><select name="subject_9" class="form-control"> <?php echo $subject_options; ?></select></td>
      <td><select name="grade_9" class="form-control"> <?php echo $grade_options; ?></select></td>
    </tr>

  </tbody>
</table>
</div>
</div>

    <tr style="">
      <td><input type="submit" class="btn btn-primary" name="submit"></td>
    </tr>

				</form>

			</div>
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

<?php

echo "<br>";
echo "<br>";



if (isset($_POST['submit'])) {

// echo $_FILES['passport']['name'];

	function files_uploaded_successfully(){
		
		  $conn = connection_to_db();
		  
		  if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		  }
		  $reg = $_SESSION['user'];
		  $sql = "SELECT * FROM student_application WHERE reg_number = '$reg' ";
		  $result = $conn->query($sql);
		  $row = $result->fetch_array();


		if (isset($_FILES['passport']) && isset($_FILES['ind_cert']) && isset($_FILES['birth_cert'])) {

			if (!empty($_FILES['passport']) && !empty($_FILES['ind_cert']) && !empty($_FILES['birth_cert'])) {

				$pp_temp = explode(".", $_FILES["passport"]["name"]);
				$pp_new_name = $row['reg_number'] . '_passport' . '.' . end($pp_temp);

				$ind_temp = explode(".", $_FILES["ind_cert"]["name"]);
				$ind_new_name = $row['reg_number'] . '_ind_cert' . '.' . end($ind_temp);

				$bc_temp = explode(".", $_FILES["birth_cert"]["name"]);
				$bc_new_name = $row['reg_number'] . '_birth_cert' . '.' . end($bc_temp);

				if (
					move_uploaded_file($_FILES["passport"]["tmp_name"], "./students_data/".$pp_new_name)
						&&
					move_uploaded_file($_FILES["ind_cert"]["tmp_name"], "./students_data/".$ind_new_name)
						&&
					move_uploaded_file($_FILES["birth_cert"]["tmp_name"], "./students_data/".$bc_new_name)
				) {
					return True;
				// echo "
				// <div class='alert alert-success' role='alert'>
		  // 	File Upload SUCCESSFUL!
				// </div>
				// <br>";
				// go_to_dashboard();

				}else{
						echo "
						<div class='alert alert-danger' role='alert'>
				  	File Upload Error. Please Try Again!
						</div>
						<br>";
				}
			
			}else{
					echo "
					<div class='alert alert-danger' role='alert'>
			  	Please Upload All Required Files!
					</div>
					<br>";
			}

		}
	}


	$conn = new mysqli($servername, $username, $password, $dbname);


	function return_value($key){
		$conn = connection_to_db();
		$x = mysqli_real_escape_string($conn,$_POST[$key]);
		$conn->close();
		return $x;
	}

	function user_added_to_db(){
			$conn = connection_to_db();
			if ($conn) {
				// echo "Connection SUCCESSFUL";

			$user_reg = $_SESSION['user'];

			$query = "

					INSERT INTO 
					`post_utme_ssce_1`(
						`id`, 
						`reg_number`, 
						`exam_number`, 
						`exam_center`, 
						`exam_year`, 
						`exam_type`, 
						`subject_1`, 
						`subject_2`, 
						`subject_3`, 
						`subject_4`, 
						`subject_5`, 
						`subject_6`, 
						`subject_7`, 
						`subject_8`, 
						`subject_9`, 
						`grade_1`, 
						`grade_2`, 
						`grade_3`, 
						`grade_4`, 
						`grade_5`, 
						`grade_6`, 
						`grade_7`, 
						`grade_8`, 
						`grade_9`, 
						`passport`, 
						`ind_cert`, 
						`birth_cert`, 
						`admission_status`) 
					VALUES (
						NULL,
						'".$user_reg."',
						'".return_value('exam_number')."',
						'".return_value('exam_center')."',
						'".return_value('exam_year')."',
						'".return_value('exam_type')."',
						'".return_value('subject_1')."',
						'".return_value('subject_2')."',
						'".return_value('subject_3')."',
						'".return_value('subject_4')."',
						'".return_value('subject_5')."',
						'".return_value('subject_6')."',
						'".return_value('subject_7')."',
						'".return_value('subject_8')."',
						'".return_value('subject_9')."',
						'".return_value('grade_1')."',
						'".return_value('grade_2')."',
						'".return_value('grade_3')."',
						'".return_value('grade_4')."',
						'".return_value('grade_5')."',
						'".return_value('grade_6')."',
						'".return_value('grade_7')."',
						'".return_value('grade_8')."',
						'".return_value('grade_9')."',
						'".end((explode('.', $_FILES['passport']['name'])))."',
						'".end((explode('.', $_FILES['ind_cert']['name'])))."',
						'".end((explode('.', $_FILES['birth_cert']['name'])))."',
						'".'0'."'
						)";

					$result = $conn->query($query);
					if ($result) {
						return True;
						// echo "<br>QUERIED<br>";
					}else{
						// echo "<br>NOT QUERIED<br>";
						// echo $result;
					}
				
			}
	}

	if (!putme_completed()) {
		if (files_uploaded_successfully() and user_added_to_db()) {
			echo $putme_seccess;
			// code...
		}else{
			echo $putme_completed_msg;
			die();
		}
	
	}
}

// foreach ($_POST as $key => $value) {
// 	echo "Field ".htmlspecialchars($key)." : ".htmlspecialchars($value)."<br>";

// }

echo "<br>";
echo "<br>";
echo "<br>";


?>