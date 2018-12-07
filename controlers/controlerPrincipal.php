<?php

require_once 'functions/formulaire.php';
require_once 'functions/dispatcher.php';

require_once 'model/dto/condition.php';
require_once 'model/dto/member.php';
require_once 'model/dto/mission.php';

require_once 'model/dto/conditionDAO.php';
require_once 'model/dto/memberDAO.php';
require_once 'model/dto/missionDAO.php';

if (isset($_GET['MP'])) {
    $_SESSION['MP'] = $_GET['MP'];
} else $_SESSION['MP'] = 'home';

if (!isset($_SESSION['theme'])) {
    $_SESSION['theme'] = "day";
}


include_once dispatcher::dispatch($_SESSION['MP']);