<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ./../index.php");
    exit();
}
include './../functions.php';

include "top.php";
?>
                    <!-- Content Row -->

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">ADMITTED STUDENTS</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>JAMB Reg. No.</th>
                        <th>Full name</th>
                        <th>Department</th>
                        <th>Faculty</th>
                        <th>JAMB Score</th>
                        
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>JAMB Reg. No.</th>
                        <th>Full name</th>
                        <th>Department</th>
                        <th>Faculty</th>
                        <th>JAMB Score</th>
                    </tr>
                </tfoot>
                <tbody>
                    <?php list_admitted()?>
                </tbody>
            </table>
        </div>
    </div>
</div>


<?php
include 'footer.php';
?>