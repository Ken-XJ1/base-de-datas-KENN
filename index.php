
<?php
$host = "localhost"; 
$usuario = "root";   
$clave = "";    
$base_datos = "hospitaleps"; 

$conexion = new mysqli($host, $usuario, $clave, $base_datos);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$mensaje = ""; 
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['registro'])) {
    $nombre = trim($_POST['nombre']);
    $apellido = trim($_POST['apellido']);
    $telefono = trim($_POST['telefono']);
    $especialidad = trim($_POST['especialidad']);
    $correo_electronico = trim($_POST['correo']);

    $insertar_datos = "INSERT INTO medicos (nombre, apellido, especialidad, telefono, correo_electronico) 
                       VALUES ('$nombre', '$apellido', '$especialidad', '$telefono', '$correo_electronico')";

if ($conexion->query($insertar_datos) === TRUE) {
    header("Location: index.php?mensaje=exito");
    exit();
} else {
    header("Location: index.php?mensaje=error");
    exit();
}
}

if (isset($_GET['mensaje'])) {
    if ($_GET['mensaje'] == "exito") {
        $mensaje = "<div class='alert alert-success text-center'>✅ Registro exitoso</div>";
    } elseif ($_GET['mensaje'] == "error") {
        $mensaje = "<div class='alert alert-danger text-center'>❌ Error al registrar</div>";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Médicos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style/style.css">   
   
</head>
<body>


<div class="header-bar">
    Hospital Nueva EPS
</div>

<div class="form-container">
    <h3>Registro para Médicos</h3>
    <form action="" method="POST">
        <div class="mb-3">
            <input type="text" class="form-control" name="nombre" placeholder="Nombre" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="apellido" placeholder="Apellido" required>
        </div>
        <div class="mb-3">
            <input type="tel" class="form-control" name="telefono" placeholder="Teléfono" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="especialidad" placeholder="Especialidad" required>
        </div>
        <div class="mb-3">
            <input type="email" class="form-control" name="correo" placeholder="Correo" required>
        </div>
        <button type="submit" class="btn btn-primary w-100" name="registro">Registrarse</button>
        <button type="reset" class="btn btn-danger w-100 mt-2">Resetear</button>
    </form>

    
    <a href="pacientes.php" class="btn btn-secondary w-100 mt-3">Si eres paciente, haz clic aquí</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
