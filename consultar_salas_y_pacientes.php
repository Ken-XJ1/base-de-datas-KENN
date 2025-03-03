<?php

$mysqli = new mysqli("localhost", "usuario", "contraseña", "hospitaleps");


if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}


$sql = "SELECT * FROM vista_salas_pacientes";
$result = $mysqli->query($sql);


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID Sala: " . $row['id_sala'] . " - Sala: " . $row['sala'] . " - Paciente: " . $row['paciente'] . " - Fecha Ingreso: " . $row['fecha_ingreso'] . "<br>";
    }
} else {
    echo "0 resultados";
}


$mysqli->close();
?>