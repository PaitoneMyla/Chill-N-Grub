<?php
	include('db_conn.php');

	$tname=$_POST['tname'];

	$sql="insert into mesa (tbnum) values ('$tname')";
	$conn->query($sql);

	header('location:mesa.php');

?>
