<h1 class="title-1"> Игротека</h1>

			
			<?php

			foreach ($games as $key => $game) { ?>

      <div class="card mb-20">
				<div class="row">
				<?php if ( $game['photo'] != '') { ?>
					<div class="col-auto">
						<img height = "200" src="<?=HOST?>data/games/min/<?=$game['photo']?>">
					</div>
					<?php } ?>
					<div class="col">
						<div class="card__header">
				<h4 class="title-4"><?=$game['title']?></h4>
					<div class="buttons">

					<?php 

          if(isset($_SESSION['user'])) {
            if($_SESSION['user'] == 'admin') { ?>
              <a href="edit.php?id=<?=$game['id']?>" class="button button--edit">Редактировать</a>
							<a href="?action=delete&id=<?=$game['id']?>" class="button button--delete">Удалить игру</a>
        <?php
            }
          }
        

        ?>
				
				
					</div>
			</div>
        
        <div class="badge"><?=$game['genre']?></div>
        <div class="badge"><?=$game['releaseyear']?></div>
				<div class="mt-20">
				<a href="single.php?id=<?=$game['id']?>" class="button">Подробнее о игре</a>
				</div>
					</div>
				</div>
			
			</div>
			<?php } ?>