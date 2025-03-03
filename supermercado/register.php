<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registro - Supermercado</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
  <div class="register-container">
    <h1>Regístrate en el Supermercado</h1>
    <form action="register_process.php" method="POST">
      <label for="username">Usuario:</label>
      <input type="text" id="username" name="username" required>

      <label for="password">Contraseña:</label>
      <input type="password" id="password" name="password" required>

      <label for="rol">Rol:</label>
      <select id="rol" name="rol" required>
        <option value="admin">Admin</option>
        <option value="empleado">Empleado</option>
      </select>

      <button type="submit">Registrarse</button>
    </form>
    <p>¿Ya tienes una cuenta? <a href="index.php">Inicia sesión aquí</a></p>
  </div>
</body>
</html>