<?php
include 'db_connect.php';



$name = $_POST['country-name'];
$area = $_POST['area'];
$population = $_POST['population'];
$phonecode = $_POST['phonecode'];
$flag = $_POST['flag'];

if (isset($_GET['edit']) && $_GET['edit']) {
     $sql = "UPDATE country SET name=?, area=?, population=?, phonecode=?, flag=? WHERE country.id=?";
    $stmt= $conn->prepare($sql);
    $stmt->execute([$name, $area, $population, $phonecode, $flag, $_GET['id'] ]);
}
else{
    $sql = "INSERT INTO country (name,area,population,phonecode,flag) VALUES (?,?,?,?,?)";
    $stmt= $conn->prepare($sql);
    $stmt->execute([$name, $area, $population, $phonecode, $flag]);
}

header("Location: ../index.php");