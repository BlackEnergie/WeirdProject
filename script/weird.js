/* body, div.card , hr, p , h1 , navbar*/

document.addEventListener('DOMContentLoaded', function () {
    var url_string = window.location.href;
    var url = new URL(url_string);
    var MP = url.searchParams.get("MP");
    var items = document.getElementById(MP);
    items.className += " active";
    items.id += " active";
}, false);

function switchDay(){
    document.body.className = "";
    document.getElementById("navbar").className = "navbar navbar-expand-lg navbar-light";
    var btn = document.getElementById("theme");
    btn.className = "btn btn-dark";
    btn.setAttribute("onclick", "switchNight()");
    btn.innerText = "Night mode";
    $.ajax({
        url : "controlers/jquery/changeTheme.php",
        type : "POST",
        data : "theme=day"
    });
}

function switchNight() {
    document.body.className = "night";
    document.getElementById("navbar").className = "navbar navbar-expand-lg navbar-dark";
    var btn = document.getElementById("theme");
    btn.className = "btn btn-warning";
    btn.setAttribute("onclick", "switchDay()");
    btn.innerText = "Day mode";
    $.ajax({
        url : "controlers/jquery/changeTheme.php",
        type : "POST",
        data : "theme=night"
    });
}