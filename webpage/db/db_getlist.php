<?php

include 'db_connect.php';

$getCountries = $conn->prepare("SELECT * FROM country ORDER BY id ASC");
$getCountries->execute();
$countries = $getCountries->fetchAll();

$itemsPerPage = 10;
$getCountriesCount = $conn->prepare("SELECT COUNT(id) fROM country");
$getCountriesCount->execute();
$row = $getCountriesCount->fetch();
$countryCount = $row[0];

$pageNums = ceil($countryCount/$itemsPerPage);
if (!empty($_GET['start'])) {
    $page = $_GET['start'];
} else {
    $page = 0;
}
$start = $page * $itemsPerPage;

if (isset($_GET['sortby'])) {
    $sortby = $_GET['sortby'];

    if ($sortby == 'nameASC') {
        $getCountriesWithLimit = $conn->prepare("SELECT * FROM country ORDER BY id ASC limit $start,$itemsPerPage");
    }
    if ($sortby == 'nameDSC') {
        $getCountriesWithLimit = $conn->prepare("SELECT * FROM country ORDER BY id DESC limit $start,$itemsPerPage");
    }
} else {
    $getCountriesWithLimit = $conn->prepare("SELECT * FROM country ORDER BY id ASC limit $start,$itemsPerPage");
}

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

    

    if (sizeof($countries) == 0) {
        $getCountriesByString = $conn->prepare("SELECT DISTINCT * FROM city WHERE city.name LIKE \"%$countryString%\"");
        $getCountriesByString->execute();
        $cities = $getCountriesByString->fetchAll();

        $citiesIdArray=[];

        foreach ($cities as $city) {
            array_push($citiesIdArray, $city["fk_countryId"]);
        }
   
        $getCountriesByString = $conn->prepare("SELECT *  FROM country WHERE country.id IN (". implode(',', $citiesIdArray) . ")");
        $getCountriesByString->execute();
        $countries = $getCountriesByString->fetchAll();
    }

    return $countries;
}
