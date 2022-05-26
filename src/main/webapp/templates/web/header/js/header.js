function reply_click(clicked_id) {
    document.getElementById("selected-local").innerHTML = document.getElementById(clicked_id).innerHTML + "<i class=\"fas fa-angle-down\" style=\"margin-top: 5px; margin-left: 5px;\"></i>";
}

function lang_change(clicked_id) {
    // Lấy thẻ div
    var div = document.getElementById("selected-lang");
    if (clicked_id == "lang-vn") {
        div.style.backgroundImage = "url(/templates/web/common/img/vietnam.png)"; // change it
    } else {
        div.style.backgroundImage = "url(/templates/web/common/img/vietnam.png)"; // change it
    }
}

       
