<?php
header('Content-Type: application/json; charset=utf-8');

$conn = new mysqli("localhost", "root", "", "bd_editorial");
if ($conn->connect_error) {
    echo json_encode(["error" => "Error conexión: " . $conn->connect_error]);
    exit;
}

$nombre  = $_POST['nombre'];
$motivo  = $_POST['motivo'];
$piso    = $_POST['piso'];
$oficina = $_POST['oficina']; 

$conn->query("INSERT INTO accesos (tipo, nombre, motivo, piso, oficina, fecha, hora_entrada)
VALUES ('visitante', '$nombre', '$motivo', '$piso', '$oficina', CURDATE(), CURTIME())");

$registro_id = $conn->insert_id;

echo json_encode([
  "id"      => $registro_id,
  "nombre"  => $nombre,
  "motivo"  => $motivo,
  "piso"    => $piso,
  "oficina" => $oficina
]);
?>