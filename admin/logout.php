<?php
session_start();
include 'functions.php';
if (isset($_SESSION['admin'])) {
	session_destroy();
	// header(string);
	go_to_login_page();
}

?>