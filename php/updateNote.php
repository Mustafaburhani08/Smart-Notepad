<?php
include "db.php";
$id=$_POST["id"];
$title=$_POST["title"];
$content=$_POST["content"];
$category=$_POST["category"];
$sql= "UPDATE notes SET title='$title', content='$content', category='$category'
        WHERE note_id=$id";
mysqli_query($conn,$sql);
header("Location: ../index.php");
exit;