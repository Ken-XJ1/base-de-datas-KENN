<?php
session_start();

// Datos de conexión a la base de datos
$host = 'localhost';
$db   = 'supermercado';
$user = 'root'; // Usuario por defecto de XAMPP
$pass = '';     // Contraseña por defecto de XAMPP
$charset = 'utf8mb4';

// Conexión a la base de datos
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

// Obtener datos del formulario
$username = $_POST['username'];
$password = $_POST['password'];

// Buscar el usuario en la base de datos
$stmt = $pdo->prepare('SELECT * FROM usuarios WHERE username = ?');
$stmt->execute([$username]);
$user = $stmt->fetch();

// Verificar la contraseña (en texto plano)
if ($user && $password === $user['password']) {
    // Iniciar sesión
    $_SESSION['username'] = $user['username'];
    $_SESSION['rol'] = $user['rol'];
    header('Location: dashboard.php');
    exit();
} else {
    // Redirigir con error
    header('Location: index.php?error=1');
    exit();
}
?>