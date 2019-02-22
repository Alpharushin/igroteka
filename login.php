<?php

require('config.php');


if (isset($_POST['enter'])) {
  $adminName = 'admin';
  $adminPass = '1234';

if ($_POST['login'] == $adminName) {
  if ($_POST['password'] == $adminPass) {
    
    $_SESSION['user'] = 'admin';
    header('Location: ' . HOST . 'index.php');
  }
}


}


include('views/head.tpl');
include('views/login.tpl');
include('views/footer.tpl');


?>