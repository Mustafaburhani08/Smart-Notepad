<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Create Note</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <?php include "php/db.php"; ?>
        
        <div class="container">
            
            <div class="page-header">
                <h1>Create New Note</h1>
                <p class="hero-subtitle"> Capture your thoughts, ideas and tasks beautifully.</p>
            </div>

            <form action="php/addNote.php" method="POST" class="premium-form">
                <label for="title">Title</label>
                <input id="title" type="text" name="title" placeholder="Enter Title" required>
                
                <label for="content">Content</label>
                <textarea id="content" name="content" rows="10" placeholder="Write your note here..." required></textarea>
                <label for="category">Category</label>
                <select id="category" name="category">
                    <?php $sql = "SELECT * FROM categories ORDER BY category_name";
                        $result = mysqli_query($conn,$sql);
                        while($cat = mysqli_fetch_assoc($result)){
                        ?>
                        <option value="<?php echo $cat['category_name']; ?>">
                            <?php echo $cat['category_name']; ?>
                        </option>
                        <?php
                    }
                    ?>
                </select>
                <button type="submit" class="primary-btn">💾 Save Note</button>
            </form>
            <br>
            <a href="index.php">
                <button type="button" class="secondary-btn"> ← Back to Home </button>
            </a>
        </div>
        <script src="js/app.js"></script>
    </body>
</html>