<?php
session_start();
include 'functions.php';
if (isset($_SESSION['admin'])) {
	session_destroy();
	header("Location: index.php");
	go_to_login_page();
}

?>
<script type='text/javascript'>
	window.location.href = './index.php';
</script>