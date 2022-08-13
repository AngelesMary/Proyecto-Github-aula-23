CREATE DATABASE peluqueria
USE peluqueria;

create table dueno
( 
DNI int,
Nombre Varchar (25),
Apellido Varchar (25),
Telefono Int,
Direccion Varchar (50),
CONSTRAINT DNI_dueno PRIMARY KEY (DNI)
);

create table perro
(
ID_perro int,
Nombre varchar (25),
Fecha_nac datetime,
Sexo varchar (9),
CONSTRAINT ID_perro PRIMARY KEY (ID_perro),
CONSTRAINT DNI_dueno FOREIGN KEY (ID_perro) REFERENCES dueno (DNI)
);

create table Historial
(
ID_Historial int,
Fecha Datetime, 
Perro Varchar (20),
Descripcion Varchar (60),
Monto int,
CONSTRAINT ID_Historial PRIMARY KEY (ID_Historial),
CONSTRAINT Perro FOREIGN KEY (ID_Historial) REFERENCES Perro (ID_perro)
);

INSERT INTO dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES
(42785062,'Paula','Velez', 15601146, 'Calle Aconcagua 15');

INSERT INTO perro (ID_perro,Nombre,Fecha_nac,Sexo) VALUES
(42785062, 'Tobi', 02/08/2000, 'Masculino');

UPDATE dueno
SET Direccion='Libertad 123' 
WHERE DNI= '42785062'; 