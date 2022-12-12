<?php


function go_to_dashboard(){
	echo "<script type='text/javascript'>
					window.location.href = './dashboard/index.php';
				</script>

				<a href='dashboard/index.php'>Dashboard</a>";
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

function student_applicants()
{
	$conn = connection_to_db();
	$query = "SELECT * FROM `student_application` WHERE 1";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		echo "FOUND MANY";
	}else{
		echo "No Applicants";
	}
	// code...
}


function total_applicants($department)
{
	$conn = connection_to_db();
	$query = "SELECT * FROM `student_application` WHERE `department` = '$department'";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		echo $result->num_rows;
		// echo "FOUND MANY";
	}else{
		echo "No Applicants";
	}
	// code...
}

function successful_putme_applicants()
{
	$conn = connection_to_db();
	$query = "SELECT * FROM `post_utme_ssce_1` WHERE 1";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		echo $result->num_rows;
		// echo "FOUND MANY";
	}else{
		echo "No Applicants";
	}
	// code...
}

function total_admitted()
{
	$conn = connection_to_db();
	$query = "SELECT * FROM `post_utme_ssce_1` WHERE `admission_status` = 1 ";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		echo $result->num_rows;
		// echo "FOUND MANY";
	}else{
		echo $result->num_rows;
	}
	// code...
}

function list_admitted(){
	$conn = connection_to_db();
	$query = "SELECT * FROM `post_utme_ssce_1` WHERE `admission_status` = 1 ";
	$result = $conn->query($query);
	if ($result->num_rows > 0) {
		$list = array();
		while ($row = $result->fetch_assoc()) {
			array_push($list, $row['reg_number']);
			echo "<br>";
		}
			foreach ($list as $key => $value) {
				$query2 = "SELECT * FROM `student_application` WHERE `reg_number` = '$value' ";
				$result2 = $conn->query($query2);
				$x = $result2->fetch_assoc();
				$jamb_total = $x['jamb_sub_1_score'] + $x['jamb_sub_2_score'] + $x['jamb_sub_3_score'] + $x['jamb_sub_4_score'];
				echo "<tr>";
				echo "<td>", $x['reg_number'] ,"</td>";
				echo "<td>", $x['first_name'], " ", $x['last_name'] ,"</td>";
				echo "<td>", $x['faculty'] ,"</td>";
				echo "<td>", $x['department'] ,"</td>";
				echo "<td>", $jamb_total ,"</td>";
				echo "</tr>";
			}
	}else{
		echo "NON ADMITTED YET";
	}
}


?>
