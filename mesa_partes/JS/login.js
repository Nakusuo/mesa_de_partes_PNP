// Mostrar/ocultar contraseña
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
} // ← ¡Aquí faltaba cerrar la función!

// Validación antes de enviar
document.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector("form");
  form.addEventListener("submit", (e) => {
    const username = form.querySelector("input[name='username']").value.trim();
    const password = form.querySelector("input[name='password']").value.trim();

    if (!username || !password) {
      e.preventDefault();
      showError("Por favor, completa todos los campos.");
    }
  });
});

// Mostrar mensaje de error visual
function showError(message) {
  let errorBox = document.querySelector(".error-box");
  if (!errorBox) {
    errorBox = document.createElement("div");
    errorBox.className = "error-box";
    errorBox.style.cssText = `
      background: #e74c3c;
      color: white;
      padding: 10px 15px;
      margin-top: 10px;
      border-radius: 8px;
      text-align: center;
      font-weight: bold;
      animation: fadeIn 0.3s ease-in-out;
    `;
    document.querySelector("form").appendChild(errorBox);
  }
  errorBox.textContent = message;
}

// Animación opcional
const style = document.createElement("style");
style.innerHTML = `
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-10px); }
  to { opacity: 1; transform: translateY(0); }
}
`;
document.head.appendChild(style);
