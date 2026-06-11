<?php
include "db.php";
if(isset($_POST["category"])){
    $category = mysqli_real_escape_string($conn, $_POST["category"]);
    $sql ="INSERT IGNORE INTO categories(category_name) VALUES('$category')";
    mysqli_query($conn,$sql); }

header("Location: ../index.php");
exit();
?>