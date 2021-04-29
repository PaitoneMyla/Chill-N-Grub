<?php 
include('db_conn.php');

session_start();
if(isset($_GET['tablenumber'])){
    if($_SESSION['tablenumber'] !== $_GET['tablenumber'] ){
        header("location: ?tablenumber={$_SESSION['tablenumber']}");
    }
}

if(!isset($_SESSION['tablenumber'])){
    header("location: ../");
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>CUSTOMER</title>
<link rel="stylesheet" type="text/css" href="">
</head>
<body>
<?php include('heading.php')?>


<?php include('nav.php'); ?>
<div class=""></div>
<div class="container">
	<h1 class="page-header text-center">MENU for Table Number <?php echo $_SESSION['tablenumber']; ?></h1>
	
	
	

	<form method="POST" action="buy.php">
		
		<table class="table ">
			<thead>
				<th class="text-center"><input type="checkbox" id="checkAll"></th>
				<th>Category</th>
				<th>Image</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</thead>
			<tbody>
				<?php
					$where = "";
					if(isset($_GET['category']))
					{
						$catid=$_GET['category'];
						$where = " WHERE product.categoryid = $catid";
					}
                
					$sql="SELECT * FROM product left JOIN category on category.cat_id=product.cat_id
							LEFT JOIN pricing on product.prod_id = pricing.prod_id order by product.cat_id
							asc,prod_name asc;";
					$query=$conn->query($sql);
					$iterate=0;
					while($row=$query->fetch_array()){
						?>
						<tr>
						
						<td class="text-center"><input type="checkbox" value="<?php echo $row['prod_id']; ?>||<?php echo $iterate; ?>" name="prod_id[]" style=""></td>
						
							<td><?php echo $row['cat_desc']; ?></td>
							<td><img src="<?php echo $row['prod_img']?>" height="100px" width="100px"></td>
							<td><?php echo $row['prod_name']; ?></td>
							<td class="text-left">&#8369; <?php echo number_format($row['price'], 2); ?></td>
							<td><input type="number" class="form-control" name="qty_<?php echo $iterate; ?>"></td>
						</tr>
						<?php
						$iterate++;
					}
				?>
			</tbody>
		</table>
		
		<div class="row">
			<div class="col-md-12" style="margin-left:5px;">
			    <input hidden type="text"  name="tblnum" value="<?php echo $_SESSION['tablenumber']; ?>">
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Order</button>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#checkAll").click(function(){
	    	$('input:checkbox').not(this).prop('checked', this.checked);
		});
	});
</script>


</body>
</html>
