<?php

function games_all($link){
  $query = "SELECT * FROM `games`";
  $games = array();
  $result = mysqli_query($link,$query);

  if ($result = mysqli_query($link,$query)) {
    while ($row = mysqli_fetch_array($result)) {
      $games[] = $row;
    }
  }

  return $games;


}

function game_new($link,$title,$genre,$releaseyear,$description){
  
  
    $query = "INSERT INTO `games`(`title` , `genre` , `releaseyear`,`description`) VALUES (
      '" . mysqli_real_escape_string($link , $title) . "' ,
      '" . mysqli_real_escape_string($link , $genre) . "' ,
      '" . mysqli_real_escape_string($link , $releaseyear) . "' ,
      '" . mysqli_real_escape_string($link , $description) . "'
    )";

  
    if (mysqli_query($link,$query)) {
      $result = true ;
    } else {
      $result = false ;
    }

    return $result;


}

function get_game($link,$id){
  $query = "SELECT * FROM `games` WHERE `id` = '" . mysqli_real_escape_string($link , $id) . "' LIMIT 1";
  
  $result = mysqli_query($link,$query);
  
  if ($result = mysqli_query($link,$query)) {
    $game = mysqli_fetch_array($result);
  
  }

  return $game;
}

function game_update($link,$title,$genre,$releaseyear,$id,$description){

  if (isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] !="" ) {
    $fileName = $_FILES['photo']['name'];
    $fileTmpLoc = $_FILES['photo']['tmp_name'];
    $fileType = $_FILES['photo']['type'];
    $fileSize = $_FILES['photo']['size'];
    $fileErrorMsg = $_FILES['photo']['error'];
    $kaboom = explode("." , $fileName);
    $fileExt = end($kaboom);

    list($width,$height) = getimagesize($fileTmpLoc);
    if ($width < 10 || $height < 10) {
      $errors[] = 'Это изображение имеет недопустимые размеры!';
    }

    $db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
    if ($fileSize > 10485760) {
      $errors[] = 'Ваше изображение больше чем 10Мб';
    } else if(!preg_match("/\.(gif|jpg|png|jpeg)$/i" , $fileName)){
      $errors[] = 'Формат изображения должен быть gif,jpg,jpeg или png';
    } else if($fileErrorMsg == 1){
      $errors[] = 'Неизвестная ошибка';
    }

    $photoFolderLocation = ROOT . 'data/games/full/';
    $photoFolderLocationMin = ROOT . 'data/games/min/';
   
    $uploadFile = $photoFolderLocation . $db_file_name;
    $moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

    if ($moveResult != true) {
      $errors[] = 'Загрузка файла не удалась';
    }
    
    require_once(ROOT . "/functions/image_resize_imagick.php");
    $target_file = $photoFolderLocation . $db_file_name;
    $resized_file = $photoFolderLocationMin . $db_file_name;
    $wmax = 137;
    $hmax = 200;
    $img = createThumbnail($target_file,$wmax,$hmax);
    $img->writeImage($resized_file);


  }


  $query = "UPDATE `games` 
      SET `title` = '" . mysqli_real_escape_string($link ,$title) . "' , 
      `genre` = '" . mysqli_real_escape_string($link ,$genre) . "' ,
     `releaseyear` = '" . mysqli_real_escape_string($link , $releaseyear) . "' ,
     `description` = '" . mysqli_real_escape_string($link , $description) . "' ,
     `photo` = '" . mysqli_real_escape_string($link , $db_file_name) . "'
     WHERE `id` = ".mysqli_real_escape_string($link ,$id)." LIMIT 1";

     
    
    

  if (mysqli_query($link,$query)) {
	$result = true;
	 
  } else {
    $result = false;
  }
  return $result;
}

function game_delete($link,$id){
  $query = "DELETE FROM `games` WHERE `id` = '" . mysqli_real_escape_string($link ,$id) . "' LIMIT 1";
  mysqli_query($link,$query);

  if (mysqli_affected_rows($link) > 0) {
    $result = true;
	} else {
    $result = false;
  }
  return $result;
}












?>