# INF275-10156_DELISIO_2024_TP3
Trabajo práctico número 4 de seminario de práctica de informática - Proyecto Airbnb JAVA

# Proyecto de Gestión de Alojamientos - Airbnb

POR FAVOR ANTES DE INICIAR EL PROGRAMA DESPLEGAR EL SCRIPT PARA LA BASE DE DATOS:

SCRIPT PARA CREACIÓN DE BASE DE DATOS

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


## Descripción

Este proyecto simula una aplicación de escritorio para la gestión de alojamientos similar a Airbnb. Ha sido implementado utilizando Java y aplica los conceptos de programación orientada a objetos (POO). Está diseñado para manejar el registro de usuarios, alojamientos, reservas y comentarios.

## Objetivos

El objetivo del proyecto es proporcionar una plataforma que permita a los usuarios buscar y reservar alojamientos, y a los anfitriones gestionar sus propiedades. Además, incluye funcionalidades para que los usuarios puedan dejar comentarios y calificaciones sobre los alojamientos.

## Funcionalidades

- **Registro de Usuarios**: Permite registrar nuevos usuarios en el sistema.
- **Registro de Alojamientos**: Permite registrar nuevos alojamientos.
- **Realización de Reservas**: Permite a los usuarios realizar reservas de alojamientos.
- **Búsqueda de Alojamientos por ID**: Permite buscar y visualizar detalles de un alojamiento específico.
- **Comentarios y Calificaciones**: Permite a los usuarios agregar comentarios y calificaciones a los alojamientos.

## Tecnologías Utilizadas

- **Java**: Lenguaje de programación principal.
- **Estructuras de Datos**: Se utiliza la base de datos bd_airbnb
- **Manejo de Excepciones**: Para asegurar un funcionamiento robusto del sistema.

## Instalación y Configuración

1. **Clonar el repositorio**:
    ```sh
    git clone https://github.com/tu-usuario/nombre-del-repositorio.git
    cd nombre-del-repositorio
    ```

2. **Compilar el proyecto**:
    Asegúrate de tener instalado JDK (Java Development Kit). Luego, compila el proyecto utilizando un IDE como IntelliJ IDEA, Eclipse, o desde la línea de comandos:
    ```sh
    javac Main.java
    ```

3. **Ejecutar el proyecto**:
    ```sh
    java Main
    ```

## Uso

Una vez que ejecutes el proyecto, verás un menú en la consola con las siguientes opciones:

1. **Registrar Usuario**: Ingresar ID, nombre, correo y contraseña.
2. **Registrar Alojamiento**: Ingresar ID, título, descripción, dirección y precio por noche.
3. **Realizar Reserva**: Ingresar ID de usuario, ID de alojamiento, y las fechas de inicio y fin.
4. **Buscar Alojamiento por ID**: Ingresar ID del alojamiento para ver sus detalles.
5. **Agregar Comentario a Alojamiento**: Ingresar ID de usuario, ID de alojamiento, texto del comentario y calificación.
6. **Salir**: Finaliza la ejecución del programa.

### Ejemplo de Uso

#### Registrar Usuario
```plaintext
Ingrese ID: U001
Ingrese nombre: Juan
Ingrese correo: juan@example.com
Ingrese contraseña: 1234
Usuario registrado exitosamente.

#### Registrar Alojamiento
Ingrese ID: A001
Ingrese título: Casa en la playa
Ingrese descripción: Hermosa casa con vista al mar
Ingrese dirección: Calle Falsa 123
Ingrese precio por noche: 150
Alojamiento registrado exitosamente.

#### Realizar reserva
Ingrese ID de usuario: U001
Ingrese ID de alojamiento: A001
Ingrese fecha de inicio (yyyy-MM-dd): 2024-07-01
Ingrese fecha de fin (yyyy-MM-dd): 2024-07-10
Reserva realizada exitosamente.

#### Buscar Alojamiento por ID
Ingrese ID de alojamiento: A001
Alojamiento encontrado:
Título: Casa en la playa
Descripción: Hermosa casa con vista al mar
Dirección: Calle Falsa 123
Precio por noche: 150.0

#### Agregar Comentario a Alojamiento
Ingrese ID de usuario: U001
Ingrese ID de alojamiento: A001
Ingrese texto del comentario: Excelente lugar para vacacionar
Comentario agregado exitosamente.





