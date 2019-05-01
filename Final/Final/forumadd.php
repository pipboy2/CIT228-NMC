<?php
    include "connect.php";
    doDB();
    $title = test_input(mysqli_real_escape_string($mysqli, $_POST['title']));
    $op = test_input(mysqli_real_escape_string($mysqli, $_POST['uName']));

    $com = "INSERT INTO topics (title,original_poster,time_stamp) VALUES ('".$title."','".$op."',NOW())";
    $que = mysqli_query($mysqli, $com);

    if ($que) {
        header("Location: forummenu.php");
    } else {
        printf("Could not insert record: %s\n", mysqli_error($mysqli));
    }

    mysqli_close($mysqli);
?>