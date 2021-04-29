<?php
if(isset($_POST['p_username']) && isset($_POST['p_password'])){
    
include_once "db_conn.php";
include_once "functions.php";
    $username = htmlentities($_POST['p_username']);
    $password = htmlentities($_POST['p_password']);
                                    
    if(chkuserstatus($conn,$username,$password) !== false){
           $user_data = chkuserstatus($conn,$username,$password);
        
                switch( $user_data['usertype']){
                    case 'W': header("location: ../waiter.php");
                              break;
                    case 'A': header("location: ../admin/");
                              break;
                }
    } else{
        header("location: index.php?error=loginfailed");
    }
    
}