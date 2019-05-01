<?php

$xmlList = simplexml_load_file("address.xml") or die("Error: XML Has no data<br><br>
<a href='menu.html'>Main Menu</a>");
foreach($xmlList->address as $addr){
	$id=$addr->id;
	$first=$addr->first;
	$last=$addr->last;
	$city=$addr->city;
	$state=$addr->state;	
	echo "<div style='width:40%'><p style='color:blue;border-bottom:2px blue solid;font-weight:900;'>ID: " . $id . "<br>" .
    "<span style='background-color:white;color:black;'>Name: " . $first . " " .  $last . "<br>" .
     " City:  ". $city . "<br>" .
     "State: " . $state . "</span></p></div>";
}
echo "<p> <br><br> <a href='menu.html'>Main Menu</a>";
?>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
</body>
</html>