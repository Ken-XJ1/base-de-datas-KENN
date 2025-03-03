<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Supermercado</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
  <div class="login-container">
    <div class="banner">
      <img src="supermarket-icon.png" alt="Supermercado">
      <h2>Bienvenido a Nuestro Supermercado</h2>
    </div>
    <form action="login.php" method="POST">
      <label for="username">Usuario:</label>
      <input type="text" id="username" name="username" required>

      <label for="password">Contraseña:</label>
      <input type="password" id="password" name="password" required>

      <button type="submit">Iniciar Sesión</button>
    </form>
    <p>¿No tienes una cuenta? <a href="register.php">Regístrate aquí</a></p>
    <?php
      if (isset($_GET['error'])) {
        echo "<p class='error-message'>Usuario o contraseña incorrectos.</p>";
      }
    ?>
  </div>
</body>
</html>