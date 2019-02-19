<?php

require('config.php');
require('database.php');
$link = db_connect();

require('models/games.php');

if (array_key_exists('add-game' , $_POST )) {
  
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
    $result = game_new($link, $_POST['title'] , $_POST['genre'], $_POST['releaseyear'],$_POST['description']);
    
    if ($result) {
      $resultSuccess = "<p>Игра успешно добавлена</p>";
    } else {
      $resultError = "<p>Произошла ошибка! Повторите ошибку позже.</p>";
    }
  }
}
include('views/head.tpl');
include('views/notifications.tpl');
include('views/new-game.tpl');
include('views/footer.tpl');

?>

