<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8"/>
    <title>Игротека</title>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="libs/normalize-css/normalize.css"/>
    <link rel="stylesheet" href="libs/bootstrap-4-grid/grid.min.css"/>
    <link rel="stylesheet" href="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css"/><!-- endbuild -->
<!-- build:cssCustom css/main.css -->
    <link rel="stylesheet" href="./css/main.css"/><!-- endbuild -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
  </head>
  <body>

<div class="container user-content pt-35">
  
		<div class="admin-nav mb-50">
			<a href="index.php" class="admin-nav__link">Все игры</a>
    		<?php 

          if(isset($_SESSION['user'])) {
            if($_SESSION['user'] == 'admin') { ?>
              <a href="new.php" class="admin-nav__link">Добавить новую игру</a>
        <?php
            }
          }
        

        ?>
        

        
        

        
        <a href="request.php" class="admin-nav__link">Панель пользователя</a>
        <a href="login.php" class="admin-nav__link">Авторизация на сайте</a>

      <?php 

          if(isset($_SESSION['user'])) {
            if($_SESSION['user'] == 'admin') { ?>
              <a href="logout.php" class="admin-nav__link">Выход</a>
        <?php
            }
          }
        

        ?> 
        

		</div>

    <?php if (isset($_COOKIE['user-name'])) { ?> 
    
    
    
    <div class="mb-50">
      
      <?php if (isset($_COOKIE['user-city'])) { ?> 
      Приветствую , <?=$_COOKIE['user-name']?> из <?=$_COOKIE['user-city']?>!
      <?php } else { ?>
      Приветствую , <?=$_COOKIE['user-name']?>!
     <?php } ?>
    </div>
  
  <?php } ?>
  
  

  
    
 