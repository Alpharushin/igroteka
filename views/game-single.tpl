<h1 class="title-1">Информация о игре</h1>

			

      <div class="card mb-20">
			<div class="row">
					<div class="col">
						<img width="500" src="<?=HOST?>data/games/full/<?=$game['photo']?>">
					</div>
					<div class="col">
						<div class="card__header">
				<h4 class="title-4"><?=$game['title']?></h4>
					<div class="buttons">

					<?php 

          if(isset($_SESSION['user'])) {
            if($_SESSION['user'] == 'admin') { ?>
              <a href="edit.php?id=<?=$game['id']?>" class="button button--edit">Редактировать</a>
							<a href="index.php?action=delete&id=<?=$game['id']?>" class="button button--delete">Удалить игру</a>
        <?php
            }
          }
        

        ?>

				
					</div>
			</div>
        
        <div class="badge"><?=$game['genre']?></div>
        <div class="badge"><?=$game['releaseyear']?></div>
				<div class="user-content">
				<p><?=$game['description']?></p>
				</div>
					</div>
			</div>
			
				
				
				
			</div>
			