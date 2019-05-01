<?php
if (($_POST['username']=="") || ($_POST['password']=="")) {
    header("Location: userlogin.html");
    exit;
}
$display_block="";
$mysqli = mysqli_connect("localhost", "lisabalbach_abshirb", "CIT1802500", "lisabalbach_Abshire") or die(mysql_error());
// $mysqli = mysqli_connect("localhost","root","","finalfantasyDB");

$safe_username = mysqli_real_escape_string($mysqli, $_POST['username']);
$safe_password = mysqli_real_escape_string($mysqli, $_POST['password']);

$sql = "SELECT fname, lname FROM authusers WHERE username = '".$safe_username."' AND password = '".$safe_password."'";

$result = mysqli_query($mysqli, $sql) or die(mysqli_error($mysqli));

if (mysqli_num_rows($result) == 1) {
	header("Location:menu.html");
	exit;
} else {
    $display_block = "<p style='text-align:center;color:red;font-size:2em;'>Please contact IT, your username and password are not valid</p>";
    $display_block .= "<p style='text-align:center;font-size:2em;'><a href='userlogin.html'> Return to login</a></p>";
}

mysqli_close($mysqli);
?>
<!DOCTYPE html>
<html>
<head>
<title>User Login</title>
<link href="style.css" type="text/css" rel="stylesheet" />

</head>
<body>
<?php echo $display_block; ?>
</body>
</html>
