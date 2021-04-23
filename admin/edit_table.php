<?php
	include('db_conn.php');

	$id=$_GET['mesa'];

	$tname=$_POST['tname'];
    $fileinfo=PATHINFO($_FILES["photo"]["name"]);
    
    $newFilename=$fileinfo['filename'] ."_". time() . "." . $fileinfo['extension'];
		move_uploaded_file($_FILES["photo"]["tmp_name"],"img/qr/" . $newFilename);
		$location="img/qr/" . $newFilename;


	$sql="update mesa set tbnum='$tname', qr_img_file='$location' where tbl_id='$id'";
	$conn->query($sql);

	header('location:mesa.php');
?>