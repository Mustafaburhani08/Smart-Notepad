<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Create Note</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

<body>

<form class="premium-form" method="POST" action="php/addCategory.php">

    <label>Category Name</label>

    <input type="text" name="category" placeholder="Enter category name" required>

    <button type="submit" class="primary-btn">+ Save Category</button>

</form>
<div class="back-home-wrapper">
    <a href="index.php">
        <button class="secondary-btn" type="button">← Back to Home</button>
    </a>
</div>
<script src="js/app.js"></script>
</body>
</html>