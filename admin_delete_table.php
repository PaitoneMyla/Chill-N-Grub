<?php
	include_once "includes/db_conn.php";

	$id = $_GET['mesa'];

	$sql="delete from mesa where tbl_id='$id'";
	$conn->query($sql);

	header('location:admin_mesa.php');
?>