<?php

$mysqli = new mysqli("localhost", "usuario", "contraseña", "hospitaleps");


if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}


$sql = "SELECT * FROM vista_medicamentos_recetados";
$result = $mysqli->query($sql);


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID Fórmula: " . $row['id_formula'] . " - Paciente: " . $row['paciente'] . " - Medicamento: " . $row['medicamento'] . " - Dosis: " . $row['dosis'] . " - Fecha: " . $row['fecha_receta'] . "<br>";
    }
} else {
    echo "0 resultados";
}


$mysqli->close();
?>