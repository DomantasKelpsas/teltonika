

<?php 
if (isset($_GET['edit']) && $_GET['edit']) {
    $editable = true;
    include '../db/db_connect.php';
    $action = "../db/country-add.php?edit=true&id=".$_GET['id'];
    $pageheader = "Redaguoti šalį";

    $getCountryByID = $conn->prepare("SELECT * FROM country WHERE country.id =".$_GET['id']);
    $getCountryByID->execute();
    $country = $getCountryByID->fetchAll();

    //die(var_dump( $country));
}
else {
    $action = "../db/country-add.php";
    $pageheader = "Pridėti šalį";
    $editable = false;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../styles/addpage.css">
    <title>Teltonika</title>
</head>
<body>


<div class="add-form-container">
<h1><?=$pageheader?></h1>
<form action=<?= $action ?> method="post">
    <p>
        <label for="country-name">Šalies pavadinimas:</label>
        <input type="text" name="country-name" id="country-name" <?php if( $editable) echo( "value=". $country[0]['name']) ?>>
    </p>
    <p>
        <label for="area">Šalies plotas:</label>
        <input type="number" name="area" id="area" <?php if( $editable) echo( "value=". $country[0]['area']) ?>>
    </p>
    <p>
        <label for="population">Šalies gyv. skaičius:</label>
        <input type="number" name="population" id="population" <?php if( $editable) echo( "value=". $country[0]['population']) ?>>
    </p>
    <p>
        <label for="phonecode">Šalies Tel. kodas:</label>
        <input type="number" name="phonecode" id="phonecode" <?php if( $editable) echo( "value=". $country[0]['phonecode']) ?>>
    </p>
    <p>
        <label for="flag">Šalies vėliavos URL:</label>
        <input type="text" name="flag" id="flag" <?php if( $editable) echo( "value=". $country[0]['flag']) ?>>
    </p>
    <input class="submit" type="submit" value="Įtraukti">
</form>
</div>

</body>
</html>