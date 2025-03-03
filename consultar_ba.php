<?php

$mysqli = new mysqli("localhost", "usuario", "contraseña", "hospitaleps");


if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}


$sql = "SELECT * FROM vista_citas";
$result = $mysqli->query($sql);


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID Cita: " . $row['id_cita'] . " - Paciente: " . $row['paciente'] . " - Médico: " . $row['medico'] . " - Fecha: " . $row['fecha_hora'] . "<br>";
    }
} else {
    echo "0 resultados";
}


$mysqli->close();
?>