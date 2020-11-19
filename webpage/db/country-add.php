<?php
include 'db_connect.php';

$name = $_POST['country-name'];
$area = $_POST['area'];
$population = $_POST['population'];
$phonecode = $_POST['phonecode'];
$flag = $_POST['flag'];

$sql = "INSERT INTO country (name,area,population,phonecode,flag) VALUES (?,?,?,?,?)";
$stmt= $conn->prepare($sql);
$stmt->execute([$name, $area, $population, $phonecode, $flag]);

header("Location: ../index.php");