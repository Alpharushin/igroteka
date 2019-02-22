<?php

require('config.php');
require('database.php');
$link = db_connect();

require('models/games.php');


if (array_key_exists('update-game' , $_POST )) {
	
	if ($_POST['title'] == '') {
		$errors[] = "<p>Введите название игры!</p>";
	} 
	if ($_POST['genre'] == '') {
		$errors[] = "<p>Введите игровой жанр!</p>";
	} 
	if ($_POST['releaseyear'] == '')  {
		$errors[] = "<p>Введите год релиза!</p>";
	} 
	if (empty($errors)) {
    $result = game_update($link, $_POST['title'] , $_POST['genre'], $_POST['releaseyear'] , $_GET['id'] ,$_POST['description']);
    
    if ($result) {
      $resultSuccess = "<p>Информация о игре успешно обновлена</p>";
    } else {
      $resultError = "<p>Произошла ошибка! Повторите ошибку позже.</p>";
    }
		
	}
	
	
}

$game = get_game($link,$_GET['id']);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/edit-game.tpl');
include('views/footer.tpl');

?>		

