<?php
if(isset($_POST["theme"])){
    $_SESSION['theme'] = $_POST["theme"];
    echo $_POST["theme"];
}