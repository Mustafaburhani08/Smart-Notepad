// DARK MODE

// ===========================
// THEME (Light / Dark / System)
// ===========================

const themeSelector = document.getElementById("themeSelector");

function applyTheme(theme) {

    if (theme === "dark") {

        document.body.classList.add("dark-mode");

    } else if (theme === "light") {

        document.body.classList.remove("dark-mode");

    } else {

        // System Default
        if (window.matchMedia("(prefers-color-scheme: dark)").matches) {

            document.body.classList.add("dark-mode");

        } else {

            document.body.classList.remove("dark-mode");

        }

    }

}

const savedTheme = localStorage.getItem("theme") || "system";

applyTheme(savedTheme);

if (themeSelector) {

    themeSelector.value = savedTheme;

    themeSelector.addEventListener("change", function () {

        localStorage.setItem("theme", this.value);

        applyTheme(this.value);

    });

}

window.matchMedia("(prefers-color-scheme: dark)").addEventListener(
    "change",
    function () {

        if (
            (localStorage.getItem("theme") || "system")
            === "system"
        ) {

            applyTheme("system");

        }

    }
);



const searchInput =
document.getElementById("searchInput");

const filter =
document.getElementById("categoryFilter");

function filterNotes(){

    const searchValue =
    searchInput.value.toLowerCase();

    const selectedCategory =
    filter.value.toLowerCase();

    const notes =
    document.querySelectorAll(".note-card");

    notes.forEach(function(note){

        const text =
        note.innerText.toLowerCase();

        const category =
        note.dataset.category.toLowerCase();

        const searchMatch =
        text.includes(searchValue);

        const categoryMatch =
        selectedCategory === "all" ||
        category === selectedCategory;

        if(searchMatch && categoryMatch){
            note.style.display = "block";
        }
        else{
            note.style.display = "none";
        }

    });

}

if(searchInput){
    searchInput.addEventListener(
        "keyup",
        filterNotes
    );
}

if(filter){
    filter.addEventListener(
        "change",
        filterNotes
    );
}

/* ==========================
   THREE-DOT MENU (CLICK)
========================== */

document.addEventListener("DOMContentLoaded", function () {

    document.querySelectorAll(".menu-btn").forEach(function (button) {

        button.addEventListener("click", function (event) {

            event.preventDefault();
            event.stopPropagation();

            // Close other menus
            document.querySelectorAll(".note-menu.open").forEach(function (menu) {
                if (menu !== button.closest(".note-menu")) {
                    menu.classList.remove("open");
                }
            });

            // Toggle current menu
            button.closest(".note-menu").classList.toggle("open");
        });

    });

    // Close on outside click
    document.addEventListener("click", function () {
        document.querySelectorAll(".note-menu.open").forEach(function (menu) {
            menu.classList.remove("open");
        });
    });

});

document.addEventListener("DOMContentLoaded", function () {

    const modal = document.getElementById("confirmModal");

    if (!modal) return;

    const message = document.getElementById("confirmMessage");
    const ok = document.getElementById("confirmOk");
    const cancel = document.getElementById("confirmCancel");

    let targetUrl = "";

    document.querySelectorAll(".delete-link").forEach(function (link) {

        link.addEventListener("click", function (e) {

            e.preventDefault();

            targetUrl = this.dataset.url;

            message.textContent = this.dataset.message;

            modal.classList.add("show");
        });

    });

    cancel.addEventListener("click", function () {

        modal.classList.remove("show");

    });

    ok.addEventListener("click", function () {

        window.location.href = targetUrl;

    });

});