<?php
include "db.php";
$title=$_POST["title"];
$content=$_POST["content"];
$category=$_POST["category"];
$title = mysqli_real_escape_string($conn, $title);
$content = mysqli_real_escape_string($conn, $content);
$category = mysqli_real_escape_string($conn, $category);
$sql = "INSERT INTO notes (title,content,category)
VALUES
('$title',
'$content',
'$category')";
$result= mysqli_query($conn, $sql);
if($result){
    header("Location: ../index.php");
}
else{
    echo "Error";
}
?>