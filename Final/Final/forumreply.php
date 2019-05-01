<?php
    session_start();
    include "connect.php";
    doDB();
    $op = test_input(mysqli_real_escape_string($mysqli, $_POST['replyName']));
    $txt = test_input(mysqli_real_escape_string($mysqli, $_POST['replyText']));

    $com = "INSERT INTO posts (topic,original_poster,txt,time_stamp) VALUES ('".$_SESSION["recentTopicId"]."','".$op."','".$txt."',NOW())";
    $que = mysqli_query($mysqli, $com);

    if ($que) {
        header("Location: forumtopic.php");
    } else {
        printf("Could not insert record: %s\n", mysqli_error($mysqli));
    }

    mysqli_close($mysqli);
?>