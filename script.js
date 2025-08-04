document.getElementById("loginForm").addEventListener("submit", function (e) {
  const email = document.getElementById("email").value.trim();
  const password = document.getElementById("password").value.trim();
  let valid = true;

  // Validar email
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    document.getElementById("emailFeedback").classList.remove("d-none");
    valid = false;
  } else {
    document.getElementById("emailFeedback").classList.add("d-none");
  }

  // Validar contraseña
  const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d).{6,}$/;
  if (!passwordRegex.test(password)) {
    document.getElementById("passwordFeedback").classList.remove("d-none");
    valid = false;
  } else {
    document.getElementById("passwordFeedback").classList.add("d-none");
  }

  if (!valid) {
    e.preventDefault(); // Evita que se envíe el formulario si hay errores
  }
});
