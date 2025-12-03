<?php 
require "../config.php";
$main = new Main();
$createUser = $main->createUser($_POST);
echo json_encode($createUser);