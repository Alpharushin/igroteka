<h1>Укажите данные пользователя</h1>


<form action="setcookie.php" method="POST" class="mb-40">
    <label class="label-title">Как Вас зовут</label>
    <input class="input" type="text" placeholder="" name="user-name"/>
    <label class="label-title">Откуда Вы</label>
    <input class="input mb-40" type="text" placeholder="" name="user-city"/>
    <input type="submit" class="button" value="Сохранить информацию" name="user-submit">
</form>

<form action="unsetcookie.php" method="POST">
    <input type="submit" class="button" value="Сбросить данные" name="user-unset">
</form>