<?php
//echo "This is processing your table status to occupied <br> Seat Number: {$_GET['tablenumber']}";
//exit;
if(isset($_GET['tablenumber'])){
        include "db_conn.php";
        $tblnumber = htmlentities($_GET['tablenumber']);
         $sql_upd = "UPDATE `table`
                        SET status = 'O'
                    WHERE tbnum = ?";
        $stmt_upd = mysqli_stmt_init($conn);
    
        if(!mysqli_stmt_prepare($stmt_upd, $sql_upd)){
           header("location: ../index.php?error=8"); //update failed
        exit();
        }
        mysqli_stmt_bind_param($stmt_upd,"s",$tblnumber);
        mysqli_stmt_execute($stmt_upd);
    
        session_start();
        $_SESSION['tablenumber'] = $_GET['tablenumber'];
        header("location: ../Customer/menu.php?tablenumber={$tblnumber}");
        echo "Processed.";
    }