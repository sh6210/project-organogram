<?php
session_start();

// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body {
            font: 14px sans-serif;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="page-header">
    <h1>Welcome, <b><?php echo htmlspecialchars($_SESSION["email"]); ?></b>.</h1>
</div>
<p>
    <br>
<?php if(isset($_SESSION['info'])) echo "<h2>{$_SESSION['info']}</h2>" ?>
    <br><br>
    <a href="logout.php" class="btn btn-danger">Sign Out</a>
</p>
</body>
</html>
