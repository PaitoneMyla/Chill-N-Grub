<?php
session_start();

if(!isset($_SESSION['tablenumber'])){
    header("location: ../");
}

?>


<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>

<div class="heading">
	
</div>

<?php include('nav.php'); ?>

<div class="content">
<div class="content1">
<h1>Chill N Grub</h1>
</div>
	
</div>

<div class="footer">
	
</div>
</div>
</body>
</html>