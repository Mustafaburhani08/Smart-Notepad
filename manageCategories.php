<?php
    include "php/db.php";
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Manage Categories</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div class="container">

            <div class="page-header">
                <h1>Manage Categories</h1>
                <p class="hero-subtitle"> Organize and maintain your note categories. </p>
            </div>
            <a href="index.php">
                <button type="button" class="secondary-btn"> ← Back to Home </button>
            </a>
            <?php $sql = "SELECT * FROM categories ORDER BY category_name";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>
            <div class="category-card manage-category-card">
                <h3> 📂 <?php echo htmlspecialchars($row["category_name"]); ?> </h3>
                <?php if($row["category_name"] != "None"){ ?>
                <a href="#" class="delete-link"
                    data-message="Do you want to delete the '<?php echo htmlspecialchars($row['category_name']); ?>' category?
                    All notes currently assigned to this category will automatically be moved to the 'None' category.
                    This action cannot be undone."
                    data-url="php/deleteCategory.php?id=<?php echo $row['category_id']; ?>">
                    <button class="delete-btn" type="button"> Delete </button>
                </a>
                <?php } ?>
            </div>
            <?php
            }
            ?>
        </div>

        <div id="confirmModal" class="confirm-modal">
            <div class="confirm-box">
                <h2>Confirm Delete</h2>
                <p id="confirmMessage">Are you sure?</p>
                    <div class="confirm-actions">
                        <button id="confirmCancel" class="secondary-btn" type="button"> Cancel </button>
                        <button id="confirmOk" class="delete-btn" type="button"> Delete </button>
                    </div>
                </div>
            </div>

        <script src="js/app.js"></script>
    </body>
</html>