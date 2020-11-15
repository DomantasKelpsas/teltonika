<?php

include 'db_connect.php';

$getCountries = $conn->prepare("SELECT * FROM country ORDER BY id ASC");
$getCountries->execute();
$countries = $getCountries->fetchAll();

$itemsPerPage = 15;
$getCountriesCount = $conn->prepare("SELECT COUNT(id) fROM country");
$getCountriesCount->execute();
$row = $getCountriesCount->fetch();
$countryCount = $row[0];

$pageNums = ceil($countryCount/$itemsPerPage);
if(!empty($_GET['start']))
$page = $_GET['start'];
else $page = 0;
$start = $page * $itemsPerPage;


$getCountriesWithLimit = $conn->prepare("SELECT * FROM country ORDER BY id ASC limit $start,$itemsPerPage");
$getCountriesWithLimit->execute();
$countries = $getCountriesWithLimit->fetchAll();


function getCitiesByCountry($countryId, PDO $conn)
{
    $getCities = $conn->prepare("SELECT * FROM city WHERE city.fk_countryId = ".$countryId);
    $getCities->execute();
    $cities = $getCities->fetchAll();
    return $cities;
}

function getCountriesBySearch($countryString, PDO $conn)
{
    $getCountriesByString = $conn->prepare("SELECT * FROM country WHERE country.name LIKE \"%$countryString%\"");
    $getCountriesByString->execute();
    $countries = $getCountriesByString->fetchAll();
    return $countries;
}


