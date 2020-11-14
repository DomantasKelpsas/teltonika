<?php

include 'db_connect.php';

$getCountries = $conn->prepare("SELECT * FROM country ORDER BY id ASC");
$getCountries->execute();
$countries = $getCountries->fetchAll();




function getCitiesByCountry($countryId, PDO $conn){
    //global $conn;
    $getCities = $conn->prepare("SELECT * FROM city WHERE city.fk_countryId = ".$countryId);
    $getCities->execute();
    $cities = $getCities->fetchAll();
    return $cities;
}