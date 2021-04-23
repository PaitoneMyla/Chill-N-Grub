<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="bs/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row mt-3">
       <?php
        include_once "includes/db_conn.php";
        
        $display_tbl_sql = "SELECT * FROM `mesa`";

		$result = mysqli_query($conn,$display_tbl_sql);
		if(mysqli_num_rows($result) > 0)
		{
			while($tble_info = mysqli_fetch_assoc($result)){ ?>
                
                <div class="col-3">
                    <div class="card">
                        <h3 class="card-title mx-3">
                        Seat Number <?php echo $tble_info['tbnum'];?>
                        <br>
                        <a href="img/qr/<?php echo $tble_info['qr_img_file'];?>" class="btn btn-primary">Seat Here</a>
                        <a href="includes/processlogintable.php?tablenumber=<?php echo $tble_info['tbnum'];?>" class="btn btn-primary">Test Assign Seat</a>
                        </h3>
                        
                        <div class="card-body">
                             <?php switch($tble_info['status']){
                case 'A': echo "<p class='text-success'> Available </p>" ;
                    break;
                case 'O': echo "<p class='text-danger'> Occupied </p>"; 
                    break;                  
                                   }?>
                        </div>
                        
                    </div>
                </div>
                
                
            <?php }
		}
        ?>
    </div>
</div>



</body>
	<script src="bs/bootstrap.min.js"></script>
</html>
