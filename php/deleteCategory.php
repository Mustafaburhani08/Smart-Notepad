<?php

include "db.php";

/*
Check if category ID is received
*/

if(!isset($_GET["id"]))
{
    header("Location: ../manageCategories.php");
    exit();
}

$category_id = (int)$_GET["id"];

/*
Get category details
*/

$categoryQuery =
mysqli_query(
    $conn,
    "SELECT * FROM categories
    WHERE category_id=$category_id"
);

if(mysqli_num_rows($categoryQuery) == 0)
{
    header("Location: ../manageCategories.php");
    exit();
}

$category =
mysqli_fetch_assoc(
    $categoryQuery
);

$categoryName =
$category["category_name"];

/*
Move notes of this category to None
*/

mysqli_query(
    $conn,
    "UPDATE notes
    SET category='None'
    WHERE category='$categoryName'"
);

/*
Delete category
*/

mysqli_query(
    $conn,
    "DELETE FROM categories
    WHERE category_id=$category_id"
);

/*
Redirect back
*/

header(
    "Location: ../manageCategories.php"
);

exit();

?>