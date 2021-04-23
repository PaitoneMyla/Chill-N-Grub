<?php include('db_conn.php'); ?>
<?php include('heading.php'); ?>
<?php include('nav.php') ?>

<!DOCTYPE html>
<html>
<head>
	<title>Sales</title>
<link rel="stylesheet" type="text/css" href="sales.css">
</head>

<body>
<div class="container">

	<h1 class="page-header text-center">ORDERS</h1>
	<table class="table">
		<thead>
			<th>Date</th>
			<th>Table Name</th>
			<th>Total Sales</th>
			<th>Status</th>
			<th>Details</th>
		</thead>
		<tbody>
			<?php 
				$sql="select * from order_details order by od_id desc";
				$query=$conn->query($sql);
				while($row=$query->fetch_array()){
					?>
					<tr>
						<td><?php echo date('M d, Y h:i A', strtotime($row['date']))?></td>
						<td><?php echo $row['tblnum']; ?></td>
						<td class="text-left">&#8369; <?php echo number_format($row['total_amount'], 2); ?></td>
						<td><?php echo $row['stat']; ?></td>
						<td><a href="#details<?php echo $row['od_id']; ?>" data-toggle="modal" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span> View </a>
							<?php include('sales_disp.php'); ?>
						</td>
					</tr>
					<?php
				}
			?>

		</tbody>
	</table>
</div>

</body>
</html>