<?php
$host = "localhost";
$usuario = "root";
$contrasena = "root"; // pon tu contraseña si tienes una
$base_datos = "mesa_partes_db";
$puerto = 3307; // según tu configuración

$conexion = new mysqli($host, $usuario, $contrasena, $base_datos, $puerto);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>
