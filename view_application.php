<?php
session_start();
include 'functions.php';
if (isset($_SESSION['user'])) {
	$reg = $_SESSION['user'];
//	echo("TRUE");
}else{
	die("Can't Find User");
}

  $conn = connection_to_db();
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

  } else {
    echo "0 results";
  }
  $conn->close();


?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>APPLICATION</title>
  </head>
  <body>

    <div class="container container-fluid">

	<div class="row">
		<div class="mx-auto d-block"><img src="<?php
                    if(putme_completed()){
                      echo passport_link();
                    }else{
                      echo "assets/user1.png";
                    }
                  ?>" alt="..." class="img-thumbnail" style="max-width: 200px;"></div>
	</div>

	<div class="row">
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">First Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo "$fn";?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Last Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo "$ln";?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Other Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo "$on";?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo "$email";?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo "$pn";?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Date of Birth</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $row['date_of_birth'];?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">State</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $row['state_of_origin'];?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Local Government</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $row['lga'];?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Gender</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $row['gender'];?>
                    </div>
                  </div>
                </div>
              </div>


	</div>

        <div class="col">
        <div class="card mt-3">
            <ul class="list-group list-group-flush">

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap"  style="background-color:#0f321e; color: white;">
                    <h6 class="mb-0">UTME Scores - Sum </h6>
                    <span class=""><?php
                        echo  $row['jamb_sub_1_score']+
                            $row['jamb_sub_2_score']+
                            $row['jamb_sub_3_score']+
                            $row['jamb_sub_4_score'];  ?></span>
                </li>

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><?php echo ucfirst($row['jamb_sub_1']);?></h6>
                    <span class="text-secondary"><?php echo $row['jamb_sub_1_score'];?></span>
                </li>

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><?php echo ucfirst($row['jamb_sub_2']);?></h6>
                    <span class="text-secondary"><?php echo $row['jamb_sub_2_score'];?></span>
                </li>

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><?php echo ucfirst($row['jamb_sub_3']);?></h6>
                    <span class="text-secondary"><?php echo $row['jamb_sub_3_score'];?></span>
                </li>

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><?php echo ucfirst($row['jamb_sub_4']);?></h6>
                    <span class="text-secondary"><?php echo $row['jamb_sub_4_score'];?></span>
                </li>


            </ul>
        </div>



        <div class="card mt-3">
            <ul class="list-group list-group-flush">

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap" style="background-color:#0f321e; color: white;">
                    <h6 class="mb-0"><strong>Apllied for: </strong></h6>
                    <span class=""></span>
                </li>

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><?php echo "Department: ". ucfirst($row['department']);?></h6>
                    <span class="text-secondary"></span>
                </li>

                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><?php echo "Faculty: ".ucfirst($row['faculty']);?></h6>
                    <span class="text-secondary"></span>
                </li>

            </ul>
        </div>
    </div>
</div>

        <div class="row" style="">
            <div class="col">

                <button class='btn btn-info' onclick="print_this()" >Print</button>


            </div>
        </div>

<script>
    function print_this(){
        window.print();
    }
</script>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>


