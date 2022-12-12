<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ./../index.php");
    exit();
}else {
    $admin = $_SESSION['admin'];
}

include './../functions.php';

function list_applicants($department){
    $conn = connection_to_db($department);
    $query = "SELECT * FROM `student_application` WHERE `department` = '$department' ";
    $result = $conn->query($query);
    $serial = 1;
    if ($result->num_rows > 0) {

        while ($row = $result->fetch_assoc()) {
            $reg = $row['reg_number'];
            $jamb_total = $row['jamb_sub_1_score'] + $row['jamb_sub_2_score'] + $row['jamb_sub_3_score'] + $row['jamb_sub_4_score'];
            echo "<tr>";
            echo "<td>".$serial++."</td>";
            echo "<td>", $row['reg_number'] ,"</td>";
            echo "<td>", $row['first_name'], " ", $row['last_name'] ,"</td>";
            echo "<td>", $row['state_of_origin'] ,"</td>";
            echo "<td>", $row['lga'] ,"</td>";
            echo "<td>", $jamb_total ,"</td>";
            echo "<td>", "<a href='./view.php?reg=$reg' class='btn btn-success'><span class='text'>View</span></a>" ,"</td>";
            echo "</tr>";
        }
    }else{
        echo "NON ADMITTED YET";
    }
}

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

include "top.php";
?>

<div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">

                    <div class="text-lg font-weight-bold text-success text-uppercase mb-1">
                        <?php echo $dept?>
                    </div>

                    <div class="h2 mb-0 font-weight-bold text-gray-800"><?php total_applicants($dept); ?></div>

                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                        Total Applicants
                    </div>

                </div>
                <div class="col-auto">
                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-success">APPLICANTS</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" >
                <thead>
                    <tr>
                        <th>#</th>
                        <th>JAMB Reg. No.</th>
                        <th>Full name</th>
                        <th>State</th>
                        <th>LGA</th>
                        <th>JAMB Score</th>
                        <th>More</th>
                    </tr>
                </thead>
                <tfoot>
                <tr>
                        <th>#</th>
                        <th>JAMB Reg. No.</th>
                        <th>Full name</th>
                        <th>State</th>
                        <th>LGA</th>
                        <th>JAMB Score</th>
                        <th>More</th>
                    </tr>
                </tfoot>
                <tbody>
                    <?php list_applicants($dept)?>
                </tbody>
            </table>
        </div>
    </div>
</div>


<script type="text/javascript">


    $("#applicants").addClass("active")

    $(document).ready(function () {
        $('#dataTable').DataTable();
    });
</script>


<?php
include 'footer.php';
?>