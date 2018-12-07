<nav id="navbar" class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="#">
        <img src="images/icon.jpg" width="30" height="30" style="border-radius: 30%; margin-right: 10px;" class="d-inline-block align-top"
             alt="">
         DO IT LIKE BEAR GRYLLS </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item" id="home">
                <a class="nav-link" id="home" href="index.php?MP=home">Home</a>
            </li>
            <li class="nav-item" id="results">
                <a class="nav-link" id="Surviror Check List" href="index.php?MP=Surviror Check List">Surviror Check List</a>
            </li>
        </ul>
        <a style="text-decoration: none">
            <span class="navbar-text">
            <?php
            if (isset($_SESSION['theme'])) {
                if ($_SESSION['theme'] = "night") {
                    $button = "Day mode";
                    $class = "btn btn-warning";
                    $action = "onclick='switchDay()'";
                } else {
                    $button = "Night mode";
                    $class = "btn btn-dark";
                    $action = "onclick='switchNight()'";
                }
            } else{
                $button = "Night mode";
                $class = "btn btn-dark";
                $action = "onclick='switchNight()'";
            }
            echo "<button type='button' class='$class' $action id='theme'>$button</button>";
            ?>
            </span>
        </a>
    </div>
</nav>