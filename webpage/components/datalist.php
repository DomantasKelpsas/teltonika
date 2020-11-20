
<?php 
require 'db/db_getlist.php'; ?>

<div class="search-container">
<?php include 'search.php';
include 'paging.php'; ?>

</div>
<div class="sorting-container">
<a class="btnAdd" href="./components/country-add.php"><i class="fa fa-plus"></i></a>
<a class="btnSortNameASC" href="index.php?sortby=nameASC"><i class="fa fa-sort-alpha-asc"></i></a>
<a class="btnSortNameDSC" href="index.php?sortby=nameDSC"><i class="fa fa-sort-alpha-desc"></i></a>
<!-- <a class="btnSortDateASC" href="index.php?sortby=dateASC"><i class="fa fa-plus"></i></a>
<a class="btnSortDateDSC" href="index.php?sortby=dateDSC"><i class="fa fa-plus"></i></a> -->
</div>

<?php
foreach($countries as $country):?>
        <button class="accordion"><h2><?= $country['name']?></h2>
        <?php if(!is_null($country['flag'])): ?>
        <img class="country-flag-img" alt="veliava" src="<?= $country['flag']?>">
        <?php endif; ?>
        <div class="editing-btns-pannel">
        <a class="editBtn" href="./components/country-add.php?edit=true&id=<?= $country['id'];?>"> <i class="fa fa-pencil"></i></a>
        <a class="delBtn" href="./db/delete.php?id=<?= $country['id'];?>"><i class="fa fa-times"></i> </a>      
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