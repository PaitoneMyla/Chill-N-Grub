<?php 

$servername = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "chill_n_grub";

$conn = mysqli_connect($servername,$dbusername,$dbpassword,$dbname);

if(!$conn){
die ("Maintenance Mode " . mysqli_connect_error());
 }
 ?>
