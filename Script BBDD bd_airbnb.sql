//SCRIPT PARA CREACIÓN DE BASE DE DATOS

CREATE DATABASE IF NOT EXISTS bd_airbnb;

USE bd_airbnb;

CREATE TABLE IF NOT EXISTS Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Anfitrion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Alojamiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DOUBLE NOT NULL,
    anfitrion_id INT,
    FOREIGN KEY (anfitrion_id) REFERENCES Anfitrion(id)
);

CREATE TABLE IF NOT EXISTS Comentario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenido TEXT NOT NULL,
    usuario_id INT,
    alojamiento_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (alojamiento_id) REFERENCES Alojamiento(id)
);

CREATE TABLE IF NOT EXISTS Reserva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    usuario_id INT,
    alojamiento_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (alojamiento_id) REFERENCES Alojamiento(id)
);

