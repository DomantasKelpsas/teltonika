
<?php

include 'db_connect.php';

$id=$_GET['id'];

$sql = "DELETE FROM country WHERE id=$id";
$conn->exec($sql);
echo "Record deleted successfully";
header("Location: ../index.php");