
# 📑 Mesa de Partes Digital (MDP)

![Status](https://img.shields.io/badge/status-en%20desarrollo-yellow)
![License](https://img.shields.io/badge/licencia-Uso%20Académico-orange)
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

## 🛠️ Tecnologías

| Categoría | Herramientas |
|-----------|--------------|
| **Frontend** | ![HTML](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white) ![CSS](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black) |
| **Backend** | ![Node.js](https://img.shields.io/badge/Node.js-339933?logo=node.js&logoColor=white) ![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white) ![Java](https://img.shields.io/badge/Java-007396?logo=java&logoColor=white) |
| **Base de Datos** | ![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white) |
| **Control de Versiones** | ![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white) |

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
