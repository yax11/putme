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
    $conn = connection_to_db();
    $query = "SELECT * FROM `student_application` WHERE `department` = '$department' ";
    $result = $conn->query($query);
    $serial = 1;
    if ($result->num_rows > 0) {

        while ($row = $result->fetch_assoc()) {
            $reg = $row['reg_number'];
            $query2 = "SELECT * FROM `post_utme_ssce_1` WHERE `reg_number` = '$reg' ";
            $result2 = $conn->query($query2);
//            $row2 = $result2->fetch_assoc();

            $jamb_total = $row['jamb_sub_1_score'] + $row['jamb_sub_2_score'] + $row['jamb_sub_3_score'] + $row['jamb_sub_4_score'];

            while ($row2 = $result2->fetch_assoc()) {
                $grade = $jamb_total-150;
                if ($grade >= 50 && $row2['admission_status'] == '0'){
                    echo "<tr>";
                    echo "<td>".$serial++."</td>";
                    echo "<td>", $row['reg_number'] ,"</td>";
                    echo "<td>", $row['first_name'], " ", $row['last_name'] ,"</td>";
                    echo "<td>", $row['state_of_origin'] ,"</td>";
                    echo "<td>", $row['lga'] ,"</td>";
                    echo "<td>", $grade ,"</td>";

//                    if ()
                    echo "<td>", "<a href='./admit.php?reg=$reg' class='btn btn-success'><span class='text'>Admit</span></a>" ,"</td>";
                    echo "</tr>";
                }
            }
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


    </div>

    <!-- DataTale -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-success">
                CANDIDATES ELIGIBLE FOR ADMISSION
            </h6>
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
                        <th>PUTME Score</th>
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
                        <th>PUTME Score</th>
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

        $("#p_utme").addClass("active")

        $(document).ready(function () {
            $('#dataTable').DataTable();
        });
    </script>


<?php
include 'footer.php';
?>