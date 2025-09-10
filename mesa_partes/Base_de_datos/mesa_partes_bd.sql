-- ==========================
-- BASE DE DATOS: Mesa de Partes Digital
-- ==========================
DROP DATABASE IF EXISTS mesa_partes_db;
CREATE DATABASE mesa_partes_db;
USE mesa_partes_db;

-- ==========================
-- TABLAS
-- ==========================
CREATE TABLE areas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    sigla VARCHAR(20)
);

CREATE TABLE roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE usuarios (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo_contrato ENUM('CAS','LOCADOR','PNP') NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) UNIQUE,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    activo BOOLEAN DEFAULT TRUE,
    area_id BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (area_id) REFERENCES areas(id)
);

CREATE TABLE usuario_roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT NOT NULL,
    rol_id BIGINT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (rol_id) REFERENCES roles(id)
);

CREATE TABLE documentos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50) UNIQUE NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    descripcion TEXT,
    tipo VARCHAR(50), 
    estado ENUM('Registrado','En Proceso','Observado','Finalizado','Salida') DEFAULT 'Registrado',
    remitente VARCHAR(200) NOT NULL,
    destinatario VARCHAR(200),
    fecha_ingreso DATE NOT NULL,
    usuario_registro BIGINT,
    area_destino BIGINT,
    archivo_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_registro) REFERENCES usuarios(id),
    FOREIGN KEY (area_destino) REFERENCES areas(id)
);

CREATE TABLE historial_movimientos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    documento_id BIGINT NOT NULL,
    usuario_id BIGINT NOT NULL,
    area_origen BIGINT,
    area_destino BIGINT,
    accion ENUM('Registrado','Derivado','Observado','Finalizado','Salida') NOT NULL,
    observaciones TEXT,
    fecha_movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (documento_id) REFERENCES documentos(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (area_origen) REFERENCES areas(id),
    FOREIGN KEY (area_destino) REFERENCES areas(id)
);

CREATE TABLE logs (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT,
    accion VARCHAR(255) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- ==========================
-- DATOS DE PRUEBA
-- ==========================

-- Áreas
INSERT INTO areas (nombre, sigla) VALUES
('Jefatura UNITIC','JEF'),
('Área de Sistemas','SIS'),
('Área de Desarrollo','DES'),
('Área de Redes','RED'),
('Área de Soporte Técnico','SOP'),
('Mesa de Partes','MDP');

-- Roles
INSERT INTO roles (nombre) VALUES
('Administrador'),
('Trabajador'),
('Jefatura');

-- Usuarios (incluye a Marcela = nakusu)
INSERT INTO usuarios (tipo_contrato, nombre, apellido, telefono, username, password_hash, area_id) VALUES
('LOCADOR','Marius','De Paz Salazar','987654321','mdepaz','hash1',3),
('LOCADOR','Edwin','Cisneros Buendía','987654322','ecisneros','hash2',2),
('LOCADOR','Anderson','Ccorimanya Huachos','987654323','accori','hash3',5),
('LOCADOR','Jonathan','Chiclla Melo','987654324','jchiclla','hash4',4),
('LOCADOR','Gersson','Huamán García','987654325','ghuaman','hash5',5),
('LOCADOR','Oliver','Suárez Tinoco','987654327','osuarez','hash7',3),
--  Marcela oficial
('LOCADOR','Marcela','Rodríguez Munaylla','987654326','nakusu',SHA2('123456789',256),6);

-- Roles asignados
INSERT INTO usuario_roles (usuario_id, rol_id) VALUES
(1, 2), -- Marius - Trabajador
(2, 2), -- Edwin - Trabajador
(3, 2), -- Anderson - Trabajador
(4, 2), -- Jonathan - Trabajador
(5, 2), -- Gersson - Trabajador
(6, 2), -- Oliver - Trabajador
(7, 1); -- Marcela (nakusu) - Administrador

-- ==========================
-- CONSULTAS DE PRUEBA
-- ==========================
SELECT id, nombre, apellido, username FROM usuarios;
SELECT id, nombre FROM roles;
