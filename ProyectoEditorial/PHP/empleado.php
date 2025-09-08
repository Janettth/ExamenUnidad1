<?php
header('Content-Type: application/json');
$conn = new mysqli("localhost", "root", "", "bd_editorial");
if ($conn->connect_error) die("Error conexión: " . $conn->connect_error);

$numero_empleado = $_POST['numero_empleado'];

// Buscar empleado
$result = $conn->query("SELECT * FROM empleados WHERE numero_empleado='$numero_empleado'");
if ($result->num_rows == 0) {
    echo json_encode(["error" => "Empleado no registrado"]);
    exit;
}
$empleado = $result->fetch_assoc();

// Guardar entrada
$conn->query("INSERT INTO accesos (tipo, numero_empleado, nombre, motivo, fecha, hora_entrada)
VALUES ('empleado', '{$empleado['numero_empleado']}','{$empleado['nombre']}', '{$empleado['puesto']}', CURDATE(), CURTIME())");

$registro_id = $conn->insert_id;

// Respuesta
echo json_encode([
  "id"     => $registro_id,
  "nombre" => $empleado['nombre'],
  "motivo" => $empleado['puesto'],
  "piso"   => "",
  "local"  => ""
]);
?>