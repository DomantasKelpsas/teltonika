<div class="row">
          <?php 
           $cities = getCitiesByCountry($country['id'],$conn);
          foreach($cities as $city):?>
            <div class="column">
                <div class="card">
                    <img class="card-img" alt="nuotauka" src="<?= $city['img']?>">
                        <h2><?=$city['name']?></h2>
                        <p><h4>Plotas: </h4><?=$city['area']." km"?><sup>2</sup></p>
                        <p><h4>Gyventojų skaičius: </h4><?= $city['population']?></p>
                        <p><h4>Pašto kodas: </h4><?= $city['postal_code']?></p>
                    </div>
                </div>
                <?php  endforeach;?> 
            </div>
               
        </div> 