<?php

function if_loged_in(){

	if (isset($_SESSION['user'])) {
		header("Location: dashboard.php");
		exit();
	}
}


function go_to_dashboard(){
	echo "<script type='text/javascript'>
					window.location.href = './dashboard.php';
				</script>

				<a href='dashboard.php'>Dashboard</a>";
}

function go_to_login_page(){
	echo "<script type='text/javascript'>
					window.location.href = './index.php';
				</script>

				<a href='index.php'>Login</a>
				";

}


function login_error(){

	include 'modal.php';

}

$putme_seccess = <<<SUCCESS

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Modal -->
<div class='modal fade' id='login_error' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>
  <div class='modal-dialog' role='document'>
    <div class='modal-content'>
      <div class='modal-header'>
        <h5 class='modal-title' id='exampleModalLabel'>ERROR</h5>
        <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
          <span aria-hidden='true'>&times;</span>
        </button>
      </div>
      <div class='modal-body'>
        <div class="alert alert-success">POST UTME SCREENING COMPLETED!</div>
      </div>
      <div class='modal-footer'>
        <a href='dashboard.php'><button type='button' class='btn btn-success'>OK</button></a>

      </div>
    </div>
  </div>
</div>";

<script>
      $('#login_error').modal('show');
  </script>

SUCCESS;

$putme_completed_msg = <<<SUCCESS

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Modal -->
<div class='modal fade' id='login_error' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>
  <div class='modal-dialog' role='document'>
    <div class='modal-content'>
      <div class='modal-header'>
        <h5 class='modal-title' id='exampleModalLabel'>ERROR</h5>
        <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
          <span aria-hidden='true'>&times;</span>
        </button>
      </div>
      <div class='modal-body'>
        <div class="alert alert-success">POST UTME ALREADY COMPLETED!</div>
      </div>
      <div class='modal-footer'>
        <a href='dashboard.php'><button type='button' class='btn btn-success'>OK</button></a>

      </div>
    </div>
  </div>
</div>";

<script>
      $('#login_error').modal('show');
  </script>

SUCCESS;

function connection_to_db()
{
	  $servername = "localhost";
	  $username = "root";
	  $password = "";
	  $dbname = "PUTME";

	  // Create connection
	  $conn = new mysqli($servername, $username, $password, $dbname);
	  return $conn;
}

function putme_completed()
{
	$user = $_SESSION['user'];
	$conn = connection_to_db();
	$query = "SELECT `reg_number` FROM `post_utme_ssce_1` WHERE `reg_number` = '$user'";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		return True;
	}else{
		return False;
	}
	// code...
}

function admitted()
{
	$user = $_SESSION['user'];
	$conn = connection_to_db();
	if (putme_completed()) {
		// echo "SUBMITTED";
		$query = "SELECT `admission_status` FROM `post_utme_ssce_1` WHERE `reg_number` = '$user'";
		$result = $conn->query($query);
		$status = $result->fetch_array();
		if ($status['admission_status'] == 1) {
			return True;
		}else{
			return False;
		}
	}
	// code...
}

// admitted();

function passport_link()
{
	if (isset($_SESSION['user'])) {
		$conn = connection_to_db();
		$user = $_SESSION['user'];
		$query = "SELECT `passport` FROM `post_utme_ssce_1` WHERE `reg_number` = '$user'";
		$result = $conn->query($query);
		$passport = $result->fetch_array();
		$link = "./students_data/".$user."_passport.".$passport['passport'];
		return $link;
	}
}

?>
