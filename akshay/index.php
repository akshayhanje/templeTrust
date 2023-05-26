<?php
require('connection.inc.php');
if(isset($_POST['demo']))
{
  $username= $_POST['username'];
	$password= $_POST['password'];
	$sql="select * from signup where username='$username' and password='$password'";
	$res=mysqli_query($con,$sql);
	$count=mysqli_num_rows($res);
if($count>0)
{
echo '<script> alert("logged in") </script>';
session_start();
$_SESSION['loggedin'] = true;
$_SESSION['username'] = $username;
header('location:home.php');
}
else
{
  echo '<script> alert("logged failed") </script>';
}
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
  </head>
    <body style="background-color: #ade5f7;">
    <div class="container">
      <div class="row justify-content-center mt-5">
        <div class="col-md-8 order-md-2 mb-4 mb-md-0">
          <img src="./img/IMG-20230506-WA0010.jpg" alt="Login Image" class="img-fluid" id="myImage">
        </div>
        <div class="col-md-4 order-md-1">
          <div class="card-body">
            <h5>Welcome back!</h5>
            <p>Happy to see you again!</p>
            <form method="post">
              <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username">
              </div>
              <div class="form-group">
                <i class="bi bi-shield-lock"></i>
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password">
              </div>
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="keep-signed-in" name="keep-signed-in">
                <label class="form-check-label" for="keep-signed-in">Keep me signed in</label>
                <a href="#"  style="float:right"class="Forgot Password">Forgot Password?</a>
              </div>
              <button type="submit" class="btn btn-primary btn-lg btn-block" id="demo" name="demo">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
