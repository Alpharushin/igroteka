<h1 class="title-1">Добавить новую игру</h1>

<div class="panel-holder mt-30 mb-100">
        <div class="title-4 mt-0">Добавить игру</div>
        <form action="new.php" method="POST">

					<?php 
					
					if (!empty($errors)) {
						foreach ($errors as $key => $value) {
							echo "<div class='error'>$value</div>";
						}
					}
					?>
          
          <label class="label-title">Название игры</label>
          <input class="input" type="text" placeholder="Mario" name="title"/>
          <div class="row">
            <div class="col">
              <label class="label-title">Жанр</label>
              <input class="input" type="text" placeholder="Action" name="genre"/>
            </div>
            <div class="col">
              <label class="label-title">Год</label>
              <input class="input" type="text" placeholder="1987" name="releaseyear"/>
            </div>
            
					</div>
          <textarea class="textarea mb-20" name="description" placeholder="Тут будет описание игры"></textarea>
					<input type="submit" class="button" value="Добавить игру" name="add-game">
        </form>
      </div>
    </div>