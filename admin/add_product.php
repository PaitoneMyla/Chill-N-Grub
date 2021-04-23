<?php
	include('db_conn.php');
    
    $id="";

	$pname=$_POST['pname'];
	$price=$_POST['price'];
	$category=$_POST['category'];


	$fileinfo=PATHINFO($_FILES["photo"]["name"]);

	if(empty($fileinfo['filename'])){
		$location="";
	}
	else{
	$newFilename=$fileinfo['filename'] ."_". time() . "." . $fileinfo['extension'];
	move_uploaded_file($_FILES["photo"]["tmp_name"],"upload/" . $newFilename);
	$location="upload/" . $newFilename;
	}
	
	$sql1="insert into product (prod_id, prod_name, cat_id, prod_img) values ('$id', '$pname', '$category', '$location')";
	$conn->query($sql1);
    
    $sql2="insert into pricing (price,prod_id) values ('$price', '$id') ";
	$conn->query($sql2);

	header('location:product.php');

?>
