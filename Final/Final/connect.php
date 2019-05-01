<?php

function doDB(){
    global $mysqli;

    $mysqli = mysqli_connect("localhost","lisabalbach_abshirb","CIT1802500","lisabalbach_Abshire");
    // $mysqli = mysqli_connect("localhost","root","","finalfantasyDB");

    if (mysqli_connect_errno()){
        die("<br>Connction Failed: <br>" . mysqli_connect_errno() . "<br>" . $con->connect_error);
    }
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
}

?>
