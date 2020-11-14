
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
          
          <?php include('datalist_cities.php') ?>;    
         
        <?php  endforeach;?>    