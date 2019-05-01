<?php

    $mysqli = mysqli_connect("localhost","lisabalbach_abshirb","CIT1802500","lisabalbach_Abshire");
    // $mysqli = mysqli_connect("localhost", "root", "", "finalfantasyDB");
	if (mysqli_connect_errno()) {
		printf("Connection failed: %s\n", mysqli_connect_error());
		exit();
	}
	$get_master_name = "SELECT m.id, m.fname, m.lname,  a.city, a.state FROM mastername m JOIN address a on m.id = a.id";
	$get_master_res = mysqli_query($mysqli, $get_master_name) or die(mysqli_error($mysqli));
	
	$xml = "<addressList>";
	while($r = mysqli_fetch_array($get_master_res)){
	 $xml .= "<address>";
	 $xml .= "<id>".$r['id']."</id>";
	 $xml .= "<first>".$r['fname']."</first>";  
 	 $xml .= "<last>".$r['lname']."</last>";
 	 $xml .= "<city>".$r['city']."</city>";  
  	 $xml .= "<state>".$r['state']."</state>";    
     $xml .= "</address>";  
	}
$xml .= "</addressList>";
$sxe = new SimpleXMLElement($xml);
$sxe->asXML("address.xml");
echo "<h2>address.xml has been created</h2>";
echo "<p><a href='xmlLoad.php'>View Address List</a> <br><br> 
<a href='menu.html'>Main Menu</a>";
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
