<h1 class="title-1">Редактировать игру</h1>

<div class="panel-holder mt-30 mb-100">
        
        <form enctype="multipart/form-data" action="edit.php?id=<?=$game['id']?>" method="POST">

					<?php 
					
					if (!empty($errors)) {
						foreach ($errors as $key => $value) {
							echo "<div class='error'>$value</div>";
						}
					}
					?>
          
          <label class="label-title">Название игры</label>
          <input class="input" type="text" placeholder="Mario" name="title" value="<?=$game['title']?>"/>
          <div class="row">
            <div class="col">
              <label class="label-title">Жанр</label>
              <input class="input" type="text" placeholder="Action" name="genre" value="<?=$game['genre']?>"/>
            </div>
            <div class="col">
              <label class="label-title">Год</label>
              <input class="input" type="text" placeholder="1987" name="releaseyear" value="<?=$game['releaseyear']?>"/>
            </div>
					</div>
          <textarea class="textarea mb-20" name="description" placeholder="Тут будет описание игры"><?=$game['description']?></textarea>
					<div class="mb-20">
              <input type="file" name="photo">
          </div>
          <input type="submit" class="button" value="Изменить информацию о игре" name="update-game">
        </form>
      </div>
    </div>