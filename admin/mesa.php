<?php include('db_conn.php'); ?>
<?php include('heading.php'); ?>
<?php include('nav.php') ?>

<html>
<head>
    
</head>
<body>
<div class="container">
	<h1 class="page-header text-center">TABLES</h1>
	<div class="row">
		<div class="col-md-12">
			<a href="#add_table" data-toggle="modal" class="pull-right btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add Table</a>
		</div>
	</div>
	<div style="margin-top:10px;">
		<table class="table table-striped table-bordered">
			<thead>
				<th>Table Name</th>
				<th>QR</th>
				<th>Action</th>
			</thead>
			<tbody>
				<?php
					$sql="select * from mesa order by tbl_id asc";
					$query=$conn->query($sql);
					while($row=$query->fetch_array()){
						?>
						<tr>
							<td class="text-center"><?php echo $row['tbnum']; ?></td>
							<td class="text-center"><a href="../img/qr/<?php echo $row['qr_img_file'];?>" class="btn btn-primary">View</a></td>
							<td class="text-center">
								<a href="#edit_table<?php echo $row['tbl_id']; ?>" data-toggle="modal" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil"></span> Edit</a> || <a href="#del_table<?php echo $row['tbl_id']; ?>" data-toggle="modal" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span> Delete</a>
								<?php include('table_modal.php'); ?>
							</td>
						</tr>
						<?php
					}
				?>
			</tbody>
		</table>
	</div>
</div>
<?php include('table_modal.php'); ?>
</body>
</html>
