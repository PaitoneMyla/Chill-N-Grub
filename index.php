<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="bs/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row mt-3">
        <div class="col-3"></div>
        <div class="col-6">
           <h3 class="display-2">Chill N Grub</h3>
            <form action="includes/processlogin.php" method="post">
                <input type="text" class="form-control my-3" name="p_username" placeholder="username">
                <input type="password" class="form-control my-3" name="p_password" placeholder="password">
                <button class="btn btn-primary">Login</button>
            </form>
        </div>
        <div class="col-3"></div>
    </div>
</div>



</body>
	<script src="bs/bootstrap.min.js"></script>
</html>
