<?php
// Change this values according to your MySql setup
$host="localhost";
$user="root";
$password="";
$database="smart_notepad";
$conn=mysqli_connect($host, $user, $password, $database);
if(!$conn){
    die("Connection Failed");
}
?>
