<?php
	include('db_conn.php');

	$id=$_GET['product'];

	$pname=$_POST['pname'];
	$category=$_POST['category'];
	$price=$_POST['price'];

	$sql="select * from product where prod_id='$id'";
	$query=$conn->query($sql);
	$row=$query->fetch_array();

	$fileinfo=PATHINFO($_FILES["photo"]["name"]);

	if (empty($fileinfo['filename'])){
		$location = $row['photo'];
	}
	else{
		$newFilename=$fileinfo['filename'] ."_". time() . "." . $fileinfo['extension'];
		move_uploaded_file($_FILES["photo"]["tmp_name"],"../img/" . $newFilename);
		$location="../img/" . $newFilename;
	}

	$sql1="update product set prod_name='$pname', cat_id='$category', prod_img='$location' where prod_id='$id'";
	$conn->query($sql1);
    
    $sql2="update pricing set price='$price' where prod_id='$id'";
	$conn->query($sql2);


	header('location:product.php');
?>
