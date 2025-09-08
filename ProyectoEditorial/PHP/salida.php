<?php
$conn = new mysqli("localhost", "root", "", "bd_editorial");
if ($conn->connect_error) die("Error conexión: " . $conn->connect_error);

$id = $_POST['id'];
$conn->query("UPDATE accesos SET hora_salida = CURTIME() WHERE id=$id");

echo "Salida registrada";
?>