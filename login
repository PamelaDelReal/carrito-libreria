<?php
session_start();

// Simulación de credenciales válidas
$usuarios_validos = [
    'cliente1@example.com' => 'clave123',
    'cliente2@example.com' => 'segura456'
];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $clave = $_POST['clave'];

    if (isset($usuarios_validos[$email]) && $usuarios_validos[$email] === $clave) {
        $_SESSION['usuario'] = $email;
        header('Location: carrito.php');
        exit();
    } else {
        $error = "Correo o contraseña incorrectos";
    }
}
?>

<!-- HTML Formulario de inicio de sesión -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio de sesión</title>
</head>
<body>
<h2>Iniciar Sesión</h2>
<?php if (isset($error)) echo "<p style='color:red;'>$error</p>"; ?>
<form method="post" action="">
    <label>Email:</label><br>
    <input type="email" name="email" required><br><br>
    <label>Contraseña:</label><br>
    <input type="password" name="clave" required><br><br>
    <button type="submit">Ingresar</button>
</form>
</body>
</html>
