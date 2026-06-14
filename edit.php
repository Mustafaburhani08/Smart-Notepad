<?php
    include "php/db.php";
    $id=$_GET["id"];
    $sql="SELECT * FROM notes WHERE note_id=$id";
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
   <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Note</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            
            <div class="page-header">
                <h1>Edit Note</h1>
                <p>Update your note and keep your ideas organized.</p>
            </div>

            <form action="php/updateNote.php" method="POST" class="premium-form">
                <input type="hidden" name="id" value="<?php echo $row["note_id"]; ?>">
                <label for="title">Title</label>
                <input id="title" type="text" name="title" value="<?php echo htmlspecialchars($row["title"]); ?>" required>
                <label for="content">Content</label>
                <textarea id="content" name="content" rows="10"><?php echo htmlspecialchars($row["content"]); ?></textarea>
                <label for="category">Category</label>
                <select id="category" name="category">
                    <?php $categoryQuery = "SELECT category_name FROM categories ORDER BY category_name ASC";
                        $categoryResult = mysqli_query($conn, $categoryQuery);
                        while ($category = mysqli_fetch_assoc($categoryResult)) {
                        $selected = ($row["category"] == $category["category_name"]) ? "selected" : "";
                    ?>
                    <option value="<?php echo htmlspecialchars($category["category_name"]); ?>"
                        <?php echo $selected; ?>>
                        <?php echo htmlspecialchars($category["category_name"]); ?>
                    </option>
                    <?php
                    }
                    ?>
                </select>
                <button type="submit" class="primary-btn"> ✏️ Update Note </button>
            </form>
            <a href="index.php">
                <button type="button" class="secondary-btn"> ← Back to Home </button>
            </a>
        </div>
        <script src="js/app.js"></script>
    </body>
</html>