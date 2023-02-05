<?php
session_start();
include 'functions.php';
if (isset($_SESSION['user'])) {
	session_destroy();
	header("Location: index.php");
	// header(string);
	go_to_login_page();
}

?>