CREATE DATABASE hotel_reservas;
USE hotel_reservas;

CREATE TABLE habitaciones (
    id_habitacion INT AUTO_INCREMENT PRIMARY KEY,
    tipo_habitacion VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    precio_noche DECIMAL(10, 2) NOT NULL
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_habitacion INT,
    fecha_llegada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_habitacion) REFERENCES habitaciones(id_habitacion)
);

INSERT INTO habitaciones (tipo_habitacion, capacidad, precio_noche)
VALUES
    ('Individual', 1, 50.00),
    ('Doble', 2, 80.00),
    ('Suite', 4, 150.00);

INSERT INTO clientes (nombre, apellido, direccion, email)
VALUES
    ('Juan', 'Pérez', 'Calle Ficticia 123', 'juan.perez@email.com'),
    ('María', 'Gómez', 'Avenida Real 456', 'maria.gomez@email.com');

INSERT INTO reservas (id_cliente, id_habitacion, fecha_llegada, fecha_salida)
VALUES
    (1, 2, '2024-11-10', '2024-11-15'),
    (2, 3, '2024-11-12', '2024-11-18');


