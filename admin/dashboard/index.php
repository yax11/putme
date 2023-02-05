<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ./../index.php");
    exit();
}else {
    $admin = $_SESSION['admin'];
}

include './../functions.php';

$conn = connection_to_db();
$email = $dept = $fname = $lname = $oname ='';
$query = "SELECT * FROM `admins` where `email` = '$admin'";
$r = $conn->query($query);
if ($r->num_rows > 0){
    $result = $r->fetch_assoc();
    $email = $result['email'];
    $dept = $result['office'];
    $fname = $result['fname'];
    $lname = $result['lname'];
    $oname = $result['oname'];
}



$query2 = "SELECT * FROM `student_application` where `department` = '$dept'";
$r2 = $conn->query($query2);
if ($r2->num_rows > 0){
    $result = $r->fetch_assoc();
    $total_applicants_in_department = $r2->num_rows;
}

include "top.php";

?>



                    <div class="row">
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Total Applicants</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $total_applicants_in_department; ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


<?php
include 'footer.php';
?>