<?php

use Organogram\Model;

require '../vendor/autoload.php';

// Check if the user is already logged in, if yes then redirect him to welcome page
if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
    header("location: welcome.php");
    exit;
}

$departments = Model::get()->department();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body {
            font: 14px sans-serif;
        }

        .wrapper {
            width: 350px;
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <h2>Login <?php if(isset($_SESSION['error'])) echo $_SESSION['error'] ?></h2>
    <p>Please fill in your credentials to login.</p>
    <form method="post" action="HandelLogin.php">
        <div class="form-group ">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="">
            <span class="help-block"></span>
        </div>
        <div class="form-group ">
            <label>Password</label>
            <input type="password" name="password" class="form-control">
            <span class="help-block"></span>
        </div>
        <div class="form-group">
            <label for="Department">Department</label><br>
            <select name="department" id="Department" class="form-control">
                <?php foreach ($departments as $department)
                echo "<option value='{$department['id']}'>{$department['title']}</option>"
                ?>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Login">
        </div>
    </form>
</div>
</body>
</html>
