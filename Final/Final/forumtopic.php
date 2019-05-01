<?php
session_start();
include "connect.php";
doDB();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Final Fantasy</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <h1>Final Fantasy - Discussion</h1>
    <?php
        if($_POST['topicID']){
            $topicID = test_input(mysqli_real_escape_string($mysqli, $_POST['topicID']));
            $_SESSION["recentTopicId"] = $topicID;
        } else {
            $topicID = $_SESSION["recentTopicId"];
        }
        
        $topicQue = mysqli_query($mysqli, "SELECT * FROM topics WHERE id=".$topicID."");
        $postsQue = mysqli_query($mysqli, "SELECT * FROM posts WHERE topic=".$topicID."");
    
        while ($newArray = mysqli_fetch_array($topicQue, MYSQLI_ASSOC)) {
            $topicTitle = $newArray['title'];
            $op = $newArray['original_poster'];
            $time = $newArray['time_stamp'];
            
            echo "<h2>$topicTitle</h2>";
            echo "<p>$op | $time</P>";
        }

        echo "<ul>";

        while ($newArray = mysqli_fetch_array($postsQue, MYSQLI_ASSOC)) {
            $op = $newArray['original_poster'];
            $time = $newArray['time_stamp'];
            $txt = $newArray['txt'];
            
            echo "<li>$op | $time</li>";
            echo "<ul><li>$txt</li></ul>";
        }

        echo "</ul>";

        mysqli_close($mysqli);
    ?>

    <h2>Reply to Topic</h2>
    <form action="forumreply.php" method="POST">
        <label for="replyName">User Name</label><br>
        <input type="text" name="replyName" id="replyName"><br>
        <label for="replyText">Text</label><br>
        <textarea name="replyText" id="replyText" cols="30" rows="10" max="400"></textarea><br>
        <input type="submit" value="Reply!"> <br><br>
        <a href="forummenu.php">Back To Discussions</a><br><br>
        <a href="menu.html">Main Menu</a>
    </form>
    
</body>
</html>