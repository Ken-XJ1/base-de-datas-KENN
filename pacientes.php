<?php
$host = "localhost"; 
$usuario = "root";   
$clave = "";    
$base_datos = "hospitaleps"; 

$conexion = new mysqli($host, $usuario, $clave, $base_datos);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Pacientes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/stylepacientes.css">
  
</head>
<body>

<div class="header-bar">
    Hospital Nueva EPS
</div>


<div class="form-container">
    <h3>Registro para Pacientes</h3>
    <form action="" method="POST">
        <div class="mb-3">
            <input type="text" class="form-control" name="nombre" placeholder="Nombre" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="apellido" placeholder="Apellido" required>
        </div>
        <div class="mb-3">
            <input type="date" class="form-control" name="fecha_nacimiento" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Género:</label>
            <select class="form-select" name="genero" required>
                <option value="" disabled selected>Seleccione su género</option>
                <option value="Masculino">Masculino</option>
                <option value="Femenino">Femenino</option>
            </select>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="tipo_sangre" placeholder="Tipo de Sangre" required>
        </div>
        <div class="mb-3">
            <input type="tel" class="form-control" name="telefono" placeholder="Teléfono" required>
        </div>
        <div class="mb-3">
            <input type="email" class="form-control" name="correo" placeholder="Correo Electrónico" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="direccion" placeholder="Dirección" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="ciudad" placeholder="Ciudad" required>
        </div>
        <button type="submit" class="btn btn-primary w-100" name="registro">Registrar</button>
    </form>

    
    <a href="index.php" class="btn btn-secondary w-100 mt-3">Si eres médico, haz clic aquí</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>

<?php
if (isset($_POST['registro'])) {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $genero = $_POST['genero'];
    $tipo_sangre = $_POST['tipo_sangre'];
    $telefono = $_POST['telefono'];
    $correo_electronico = $_POST['correo_electronico'];
    $direccion = $_POST['direccion'];
    $ciudad = $_POST['ciudad'];

    $insertar_datos = "INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, genero, tipo_sangre, telefono, correo_electronico, direccion, ciudad) 
                       VALUES ('$nombre', '$apellido', '$fecha_nacimiento', '$genero', '$tipo_sangre', '$telefono', '$correo_electronico', '$direccion', '$ciudad')";

    if ($conexion->query($insertar_datos) === TRUE) {
        echo "<script>
                document.getElementById('mensajeExito').style.display = 'block';
              </script>";
    } else {
        echo "Error: " . $conexion->error;
    }
}
?>
