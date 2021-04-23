<?php include('db_conn.php')  ?>
<?php include('heading.php') ?>
<?php include('nav.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
</head>
<body>
    <h2 align="center">Sales</h2>
    
      <div class="body">
        <div class="container-fluid">
           <?php
           $tl_sum=0;
           $startdate ="";
           $enddate=""; 
               
           $date =date('m-d-Y');
           $sum=0; 
           $sql=mysqli_query($conn,'SELECT sum(total_amount) AS value_sum FROM order_details WHERE DATE(date) = DATE(NOW())');
           $query=mysqli_fetch_assoc($sql);
           $sum =$query['value_sum'];
           
                  
          echo "<br>"."Today Sales: &#8369;" .number_format($sum) ;
        
          ?>
          <span class="pull-right">
          <?php echo $date; ?>
          </span>
          <?php echo "<br>"; ?>
               
               <center><h4 >Search between dates</h4></center>
   
                                <form class="form-inline" method="post" align="center">
                                    <div class="form-group">
                                    <label>From date:</label>
                                     <input type="date" class="form-control" name="date1">
                                        </div>
                                     <div class="form-group">
                                         <label >To date:</label>
                                     <input type="date" class="form-control" name="date2">
                                     </div>
                                        <span>
                                 <button type="submit" class="btn btn-default" name="search">Submit</button>
                                        </span>
                                </form>
               
                <?php 
            
                                    if (isset($_POST['search'])){
                                    $startdate = $_POST['date1'];
                                    $enddate = $_POST['date2'];
                                    
                                    $sql=mysqli_query($conn,"SELECT sum(total_amount) AS value_sum
                                    FROM order_details WHERE DATE(date) between '$startdate' AND '$enddate' ");
                                                    $query=mysqli_fetch_assoc($sql);
                                                 $tl_sum =$query ['value_sum'];      
                                    
                                    }
                                 
                                        echo "<br>";
                                        echo "FROM DATE: " .$startdate. "<br>";
                                        echo "TO DATE: " . $enddate . "<br>";
                                        echo "<br>";
                                        echo "Total Sales: &#8369;" .number_format($tl_sum); 
                                        echo "<br>"."<br>";
                                        ?>            
          
        </div>
    </div>
    <div>
        <table class="table table-striped table-bordered">
			<h4 align="center">Best Sellers</h4>
			<thead align="center">
				<th style="text-align:center">Product Name</th>
				<th style="text-align:center">Category</th>
				<th style="text-align:center">Times Ordered</th>
			</thead>
			<tbody>
				<?php
                  
					$sql="SELECT p.prod_name,c.cat_desc,SUM(o.qty)  FROM orders o

left JOIN product p
ON p.prod_id = o.prod_id
left JOIN order_details od
ON o.od_id = od.od_id
left JOIN category c
ON p.cat_id = c.cat_id

WHERE od.date between '$startdate' and '$enddate'
 
GROUP by p.prod_name ;";
					$query=$conn->query($sql);
					while($row=$query->fetch_array()){
						?>
						<tr>
							<td><?php echo $row['prod_name']; ?></td>
							<td><?php echo $row['cat_desc']; ?></td>
							<td><?php echo $row['SUM(o.qty)']; ?></td>
						</tr>
						<?php
					}
                    
				?>
			</tbody>
		</table>
    </div>

    
    
      
</body>
</html>