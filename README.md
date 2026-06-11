# 📝 Smart Notepad System

A modern, responsive, and feature-rich **Smart Notepad System** built using **PHP, MySQL, HTML, CSS, and JavaScript**. The application allows users to create, organize, categorize, pin, search, and manage notes through a clean and intuitive interface with Light, Dark, and System theme support.

---

## ✨ Features

- 📝 Create, edit, view, and delete notes
- 📌 Pin and unpin important notes
- 📂 Organize notes using custom categories
- ➕ Add new categories separately
- 🗂️ Manage existing categories
- 🔍 Search notes instantly
- 🎨 Light, Dark, and System theme support
- 📊 Dashboard with Total Notes, Pinned Notes, and Categories statistics
- ⋮ Three-dot action menu for note operations
- ⚠️ Custom confirmation popups for delete actions
- 📱 Responsive and modern user interface
- 🚀 Smooth animations and premium design

---

## 🛠️ Technologies Used

- **Frontend:** HTML5, CSS3, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **Server:** Apache (XAMPP Recommended)

---

## 📁 Project Structure

```text
Smart-Notepad/
│
├── css/
│   └── style.css
│
├── js/
│   └── app.js
│
├── php/
│   ├── db.php
│   ├── addNote.php
│   ├── updateNote.php
│   ├── deleteNote.php
│   ├── addCategory.php
│   ├── deleteCategory.php
│   ├── pinNote.php
│   └── unpinNote.php
│
├── addNotePage.php
├── addCategoryPage.php
├── edit.php
├── index.php
├── manageCategories.php
├── viewNote.php
│
├── smart_notepad.sql
│
└── README.md
```

---

## 🗄️ Database

This project includes a MySQL database export file:

- `smart_notepad.sql`

Import this SQL file into MySQL before running the project.

---

## 🚀 Installation

1. Clone or download this repository.
2. Move the project folder into the `htdocs` directory of XAMPP.
3. Start **Apache** and **MySQL** from the XAMPP Control Panel.
4. Create a database named `smart_notepad`.
5. Import the provided `smart_notepad.sql` file into the database.
6. Configure database credentials in `php/db.php` if required.
7. Open your browser and visit:

```
http://localhost/Smart-Notepad/
```

---

## 🌟 Highlights

- Modern and elegant dashboard
- Responsive layout for desktop and mobile
- Premium note cards with category labels
- Light, Dark, and System theme switching
- Separate note and category management
- Custom confirmation dialogs
- Clean and maintainable codebase

---

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome. Feel free to fork this repository and submit a pull request.

---

## 📄 License

This project is intended for educational and personal learning purposes.

---

## 👨‍💻 Author

**Mustafa Burhani**

If you found this project helpful, please consider giving it a ⭐ on GitHub!
