<?php


function chkuserstatus($conn,$username,$password)
{

		$query = "select user_id, user_name, password, usertype 
                    from `users` 
                    where user_name = '{$username}'
                       and password = '{$password}'
                limit 1";

		$result = mysqli_query($conn,$query);
		if($result && mysqli_num_rows($result) > 0)
		{
			$user_data = mysqli_fetch_assoc($result);
            
           
            return $user_data;
		}
        else {
            return false;
        }
	
}

function check_login($con)
{

	if(isset($_SESSION['user_id']))
	{

		$id = $_SESSION['user_id'];
		$query = "select * from users where user_id = '$id' limit 1";

		$result = mysqli_query($con,$query);
		if($result && mysqli_num_rows($result) > 0)
		{

			$user_data = mysqli_fetch_assoc($result);
			return $user_data;
		}
	}

	//redirect to login
	header("Location: index.php");
	die;

}

