function togglePassword() {
  const input = document.getElementById("password");
  const toggleIcon = document.querySelector(".toggle-password");

  if (input.type === "password") {
    input.type = "text";
    toggleIcon.textContent = "🙈"; // cambia el icono
  } else {
    input.type = "password";
    toggleIcon.textContent = "👁️"; // vuelve al icono original
  }
}
