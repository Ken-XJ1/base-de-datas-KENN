<?php

$mysqli = new mysqli("localhost", "usuario", "contraseña", "hospitaleps");


if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}


$sql = "SELECT * FROM vista_facturas";
$result = $mysqli->query($sql);


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID Factura: " . $row['id_factura'] . " - Paciente: " . $row['paciente'] . " - Fecha: " . $row['fecha_emision'] . " - Total: " . $row['total'] . "<br>";
    }
} else {
    echo "0 resultados";
}


$mysqli->close();
?>