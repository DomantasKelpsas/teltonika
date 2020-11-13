
<?php 
require 'db/db_connect.php';
require 'db/db_getlist.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/accordion.css">
    <title>Teltonika</title>
</head>
<body>
    
    <section class="hero"></section>
    <h1 class="hero-title">Šalys ir Miestai</h1>
    

    <section class="data-list">
        <?php foreach($countries as $country):?>
        <button class="accordion"><h2><?= $country['name']?></h2></button>  
        <div class="panel">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div> 
        <?php  endforeach;?>      
    </section>

<script src="js/accordion.js"></script>
</body>
</html>