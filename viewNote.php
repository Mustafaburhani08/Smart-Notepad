<?php
    include "php/db.php";
    $id=$_GET["id"];
    $sql="SELECT * FROM notes WHERE note_id = '$id'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><?php echo htmlspecialchars($row["title"]); ?></title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
       <div class="container">
            <div class="page-header">
                <h1><?php echo htmlspecialchars($row["title"]); ?></h1>
                <p class="hero-subtitle"> Read and review your saved note. </p>
            </div>
            <div class="note-view">
                <div class="note-category">
                    <?php echo htmlspecialchars($row["category"]); ?>
                </div>
                <div class="note-content">
                    <?php echo nl2br(htmlspecialchars($row["content"])); ?>
                </div>
            </div>
            <a href="index.php">
                <button type="button" class="secondary-btn"> ← Back to Home </button>
            </a>
        </div>
        <script src="js/app.js"></script>
    </body>
</html>
