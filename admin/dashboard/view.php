<?php
session_start();
include("./../../functions.php");

if (isset($_SESSION['admin']) && isset($_GET['reg'])) {
    $reg = $_GET['reg'];
    // Create connection
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

}else{
    die("Can't Get User");
}

function passport_link_2($reg){
        $conn = connection_to_db();
        $user = $reg;
        $query = "SELECT `passport` FROM `post_utme_ssce_1` WHERE `reg_number` = '$user'";
        $result = $conn->query($query);
        $passport = $result->fetch_array();

        $link = "./../../students_data/".$user."_passport.".$passport['passport'];

        return $link;
}

function putme_completed_2($user)
{
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


?>




<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>PROFILE</title>
    <style>
        body{
            width: 100% !important;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #0f321e !important; color: white !important;">
    <a class="navbar-brand" href="#">
        <!-- Image and text -->
        <img src="./../../assets/logo.png" width="" height="50" class="d-inline-block align-top" alt="" style="background-color: #00a64e;border-radius: 10px;">
    </a>
    <button class="navbar-toggler text-white"  style="color:white !important" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon text-white" style="color:white !important"></span>
    </button>
</nav>


<div class="container">
    <div class="main-body">

        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">

                            <img src="<?php
                            if(putme_completed_2($reg)){
                                echo passport_link_2($reg);
                            }else{
                                echo "./../../assets/user1.png";
                            }
                            ?>" alt="Admin" class="rounded-circle" width="150">
                            <div class="mt-3">
                                <h4  style="background-color:#0f321e; color: white;border-radius: 5px;padding: 10px"><?php echo $row['last_name']." ".$row['first_name']." ".$row['other_name'];?></h4>
                                <p class="text-secondary mb-1"><?php echo $row['reg_number'];?></p>

                                <?php

                                if (admitted()) {
                                    echo "<div class='alert alert-success ' role='alert'>
                              <h6>Admission status: ADMITTED</h6>
                              </div>";
                                }else{
                                    echo "<div class='alert alert-warning bg-warning' role='alert'>
                              <h6>Admission status: PROCESSING</h6>
                              </div>";
                                }

                                ?>

                            </div>
                        </div>
                    </div>
                </div>
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
                        <hr>
                        <div class="row" style="">

                        </div>


                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>

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

