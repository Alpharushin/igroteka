<?php 

require('config.php');
require('database.php');
$link = db_connect();
require('models/games.php');


if (@$_GET['action'] == 'delete') {
	$result = game_delete($link,$_GET['id']);

	
	

	if ($result) {
		$resultInfo = "<p>Игра была удалена</p>";
	} else {
		$resultError = "<p>Ошибка! Попробуйте позднее</p>";
	}
}


$games = games_all($link);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/index.tpl');
include('views/footer.tpl');

$errors = array();




?>


    
    
				
		