
<?php 
require 'db/db_getlist.php';
foreach($countries as $country):?>
        <button class="accordion"><h2><?= $country['name']?></h2></button>  
        <div class="panel">
          <h4>Plotas</h4>
          <p><?php if( $country['area']>0) 
          echo ( $country['area']);
          else echo ("Dar neįvesta");
          ?></p>
          <h4>Gyventojų skaičius</h4>
          <p><?php if( $country['area']>0) 
          echo ( $country['population']);
          else echo ("Dar neįvesta");
          ?></p>
          <h4>Tel kodas</h4>
          <p><?= "+".$country['phonecode']?></p>

          <?php 
          $getCities = $conn->prepare("SELECT * FROM city WHERE city.fk_countryId = ".$country['id']);
          $getCities->execute();
          $cities = $getCities->fetchAll(); ?>
          
        
          
          <div class="row">
          <?php foreach($cities as $city):?>
            <div class="column">
                <div class="card">
                    <img class="card-img" alt="nuotauka" src="<?= $city['img']?>">
                        <h2><?=$city['name']?></h2>
                        <p><h4>Plotas: </h4><?=$city['area']." km"?><sup>2</sup></p>
                        <p><h4>Gyventojai: </h4><?= $city['population']?></p>
                        <p><h4>Pasto kodas: </h4><?= $city['postal_code']?></p>
                    </div>
                </div>
                <?php  endforeach;?> 
            </div>
               
        </div> 
        <?php  endforeach;?>    