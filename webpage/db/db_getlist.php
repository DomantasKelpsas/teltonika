<?php
$getCountries = $conn->prepare("SELECT * FROM country ORDER BY id ASC");
$getCountries->execute();
$countries = $getCountries->fetchAll();

