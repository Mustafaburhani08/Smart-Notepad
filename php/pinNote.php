<?php
include ('../php/db.php');

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "UPDATE notes SET pinned = IF(pinned=1,0,1) WHERE note_id='$id'";
    mysqli_query($conn,$sql);
}

header("Location: ../index.php");
exit();
?>