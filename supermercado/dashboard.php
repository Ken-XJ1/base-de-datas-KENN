<?php
session_start();


if (!isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard - Supermercado</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
  <div class="dashboard-container">
    <h1>Bienvenido, <?php echo $_SESSION['username']; ?></h1>
    <p>Rol: <?php echo $_SESSION['rol']; ?></p>
    <a href="logout.php">Cerrar Sesión</a>
  </div>
</body>
</html>