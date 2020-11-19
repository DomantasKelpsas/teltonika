
<?php 
require 'db/db_getlist.php'; ?>

<div class="search-container">
<?php include 'search.php';
include 'paging.php'; ?>
<a class="btnAdd" href="./components/country-add.php"><i class="fa fa-plus"></i></a>
</div>

<?php
foreach($countries as $country):?>
        <button class="accordion"><h2><?= $country['name']?></h2>
        <div class="editing-btns-pannel">
        <?php if(!is_null($country['flag'])): ?>
        <img class="country-flag-img" alt="veliava" src="<?= $country['flag']?>">
        <?php endif; ?>
        <input name="SubmitDel" type="button" class="delBtn" onclick="javascript:location.href='./db/delete.php?id=<?php echo $country['id'];?>';" value="Delete" />
        <input name="SubmitDel" type="button" class="editBtn" onclick="javascript:location.href='./db/edit.php?id=<?php echo $country['id'];?>';" value="Edit" />
        </div>
        </button>  
        <div class="panel">
        <div class="country-details">
        <table style="width:100%">
          <tr><td><h4>Plotas:</h4></td></tr>
          <tr><td><p><?php if( $country['area']>0)
          echo ( $country['area']." km"."<sup>2</sup>");
          else echo ("Dar neįvesta");
          ?></p></td></tr>
          <tr><td><h4>Gyventojų skaičius:</h4></td></tr>
          <tr><td><p><?php if( $country['area']>0) 
          echo ( $country['population']);
          else echo ("Dar neįvesta");
          ?></p></td></tr>
          <tr><td><h4>Telefono kodas:</h4></td></tr>
          <tr><td><p><?= "+".$country['phonecode']?></p></td></tr>
        </table>
          </div>
          <?php include('datalist_cities.php') ?>   
         
        <?php  endforeach;?>    