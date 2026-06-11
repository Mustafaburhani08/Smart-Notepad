<!DOCKTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Smart Notepad System</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <?php include "php/db.php"; ?>
        <div class="container">
            <!-- HEADER -->
            <header class="hero-header">
                <div class="header-top">
                    <div>
                        <h1>Smart Notepad</h1>
                        <p class="hero-subtitle">
                            Organize your thoughts, ideas and tasks in one place.
                        </p>
                    </div>
                    <select id="themeSelector">
                        <option value="system">💻 System</option>
                        <option value="light">☀️ Light</option>
                        <option value="dark">🌙 Dark</option>
                    </select>
                </div>
            </header>

            <!-- DASHBOARD STATS -->
            <section class="dashboard-stats">
                <?php $totalNotesQuery = mysqli_query($conn,"SELECT COUNT(*) AS total FROM notes");
                    $totalNotes = mysqli_fetch_assoc($totalNotesQuery);
                    $pinnedNotesQuery = mysqli_query($conn,"SELECT COUNT(*) AS total FROM notes WHERE pinned=1");
                    $pinnedNotes = mysqli_fetch_assoc($pinnedNotesQuery);
                    $categoriesQuery = mysqli_query($conn,"SELECT COUNT(*) AS total FROM categories");
                    $categories = mysqli_fetch_assoc($categoriesQuery);
                ?>
                <div class="stat-card total-card">
                    <span>Total Notes</span>
                    <h2><?php echo $totalNotes["total"]; ?></h2>
                </div>

                <div class="stat-card pinned-card">
                    <span>Pinned Notes</span>
                    <h2><?php echo $pinnedNotes["total"]; ?></h2>
                </div>

                <div class="stat-card category-card">
                    <span>Categories</span>
                    <h2><?php echo $categories["total"]; ?></h2>
                </div>
            </section>

            <!-- CONTROL SECTION -->
            <section class="controls">
                <input type="text" id="searchInput" placeholder="Search Notes">
                <select id="categoryFilter">
                    <option value="all"> All Categories </option>
                    <?php $sql = "SELECT * FROM categories ORDER BY category_name";
                    $result = mysqli_query($conn, $sql);
                    while($cat = mysqli_fetch_assoc($result)) { ?>
                        <option value="<?php echo $cat['category_name']; ?>">
                        <?php echo $cat['category_name']; ?>
                        </option>
                        <?php
                    }
                    ?>
                </select>
                <a href="addNotePage.php">
                    <button class="primary-btn"> + Add Note </button>
                </a>
                <a href="addCategoryPage.php">
                    <button class="secondary-btn"> + Add Category </button>
                </a>
                <a href="manageCategories.php">
                    <button type="button" class="secondary-btn">Manage Categories</button>
                </a>
            </section>

            
            
            <!-- PINNED NOTES -->
            <section>
                <h2>Pinned Notes</h2>
                <div class="notes-container">
                    <?php
                    $sql="SELECT * FROM notes WHERE pinned=1";
                    $result = mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_assoc($result)){ ?>
                    <div class="note-card" data-category="<?php echo $row['category'];?>">
                        <div class="note-header">
                            <h3 class="note-title">
                            <?php echo htmlspecialchars($row["title"]); ?>
                            </h3>
                            <span class="pin-badge">📌</span>
                        </div>
                        <p class="note-preview">
                        <?php echo htmlspecialchars(substr(trim($row['content']), 0, 100)); ?>
                        <?php if(strlen(trim($row['content'])) > 100) echo "..."; ?>
                        </p>
                        <div class="note-category">
                            🏷 <?php echo htmlspecialchars($row["category"]); ?>
                        </div>
                        <div class="note-menu">
                            <button type="button" class="menu-btn">⋮</button>
                            <div class="menu-dropdown">
                                <a href="viewNote.php?id=<?php echo $row["note_id"]; ?>">View</a>
                                <a href="edit.php?id=<?php echo $row["note_id"]; ?>">Edit</a>
                                <a href="php/unpinNote.php?id=<?php echo $row["note_id"]; ?>">Unpin</a>
                                <a href="php/deleteNote.php?id=<?php echo $row["note_id"]; ?>"
                                    onclick="return confirm('Delete this note?')"
                                    class="danger-link">Delete
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    ?>
                </div>
            </section>

            <!-- ALL NOTES -->
            <section>
                <h2>All Notes</h2>
                <div class="notes-container">
                    <?php $sql="SELECT * FROM notes WHERE pinned = 0 
                        ORDER BY created_at DESC";
                        $result=mysqli_query($conn, $sql);
                        while($row=mysqli_fetch_assoc($result)){
                    ?>
                    <div class="note-card" data-category="<?php echo $row['category']; ?>">
                    <div class="note-header">
                            <h3 class="note-title">
                                <?php echo htmlspecialchars($row["title"]); ?>
                            </h3>
                        </div>
                        <p class="note-preview">
                            <?php echo htmlspecialchars(substr(trim($row['content']), 0, 100)); ?>
                            <?php if(strlen(trim($row['content'])) > 100) echo "..."; ?>
                        </p>
                        <div class="note-category">
                            🏷 <?php echo htmlspecialchars($row["category"]); ?>
                        </div>
                        <div class="note-menu">
                            <button type="button" class="menu-btn">⋮</button>
                            <div class="menu-dropdown">
                                <a href="viewNote.php?id=<?php echo $row["note_id"]; ?>"> View </a>
                                <a href="edit.php?id=<?php echo $row["note_id"]; ?>"> Edit </a>
                                <a href="php/pinNote.php?id=<?php echo $row["note_id"]; ?>"> Pin </a>
                               <a href="#" class="delete-link" data-message="Delete this note?" 
                               data-url="php/deleteNote.php?id=<?php echo $row['note_id']; ?>">
                                    Delete
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    ?>
                </div>       
            </section>

            <footer>
                <p>Smart Notepad System</p>
            </footer>
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
