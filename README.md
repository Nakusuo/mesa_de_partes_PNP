
# 📑 Mesa de Partes Digital (MDP)

![Status](https://img.shields.io/badge/status-en%20desarrollo-yellow)
![License](https://img.shields.io/badge/licencia-MIT-blue)
![Tech](https://img.shields.io/badge/tecnología-WebApp-green)

La **Mesa de Partes Digital (MDP)** es una aplicación web que permite gestionar de manera eficiente la recepción, derivación y seguimiento de documentos institucionales.  
Su objetivo es optimizar tiempos, garantizar trazabilidad y ofrecer transparencia a los usuarios internos y externos.

---

## 📋 Tabla de Contenidos

| Sección | Descripción |
|---------|-------------|
| 🚀 [Características](#-características) | Funcionalidades principales del sistema |
| 🛠️ [Tecnologías](#️-tecnologías) | Herramientas y frameworks utilizados |
| 📦 [Instalación](#-instalación) | Pasos para levantar el proyecto |
| 📖 [Uso](#-uso) | Guía básica de uso |
| 📊 [Base de Datos](#-base-de-datos) | Modelo relacional implementado |
| 👥 [Equipo](#-equipo) | Integrantes del proyecto |
| 📜 [Licencia](#-licencia) | Tipo de licencia del software |

---

## 🚀 Características

| Funcionalidad | Descripción |
|---------------|-------------|
| 📌 Registro de Documentos | Cada trámite recibe un número único para seguimiento. |
| 👥 Gestión de Usuarios | Roles: administrador, trabajador y usuario externo. |
| 📂 Gestión de Áreas | Control de las oficinas y unidades organizacionales. |
| 🔎 Búsqueda y Seguimiento | Consultar estado y movimientos de cada documento. |
| 📊 Reportes | Generación de informes y estadísticas en tiempo real. |
| 🔔 Notificaciones | Alertas de cambio de estado o recepción. |

---

## 🛠️ Tecnologías

| Categoría | Herramientas |
|-----------|--------------|
| **Frontend** | HTML, CSS, JavaScript (responsive design) |
| **Backend** | Node.js / Express (ajustar según tu stack) |
| **Base de Datos** | PostgreSQL / MySQL |
| **Control de Versiones** | Git & GitHub |

---

## 📦 Instalación

```bash
# 1. Clonar el repositorio
git clone https://github.com/usuario/proyecto-mdp.git
cd proyecto-mdp

# 2. Instalar dependencias
npm install

# 3. Configurar la base de datos en archivo .env
DB_HOST=localhost
DB_USER=usuario
DB_PASS=contraseña
DB_NAME=mesa_partes
PORT=3000

# 4. Ejecutar el proyecto
npm start
