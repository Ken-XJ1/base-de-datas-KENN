<?php

$mysqli = new mysqli("localhost", "usuario", "contraseña", "hospitaleps");


if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}


$sql = "SELECT * FROM vista_historial_paciente";
$result = $mysqli->query($sql);


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID Historia: " . $row['id_historia'] . " - Paciente: " . $row['paciente'] . " - Diagnóstico: " . $row['diagnostico'] . " - Tratamiento: " . $row['tratamiento'] . " - Fecha: " . $row['fecha_registro'] . "<br>";
    }
} else {
    echo "0 resultados";
}


$mysqli->close();
?>