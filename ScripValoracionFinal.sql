create database ValoracionFinal;
use ValoracionFinal;

-- Tabla Dueño
create table Dueno (
DNI int not null unique,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono int not null,
Direccion varchar(50),
PRIMARY KEY (DNI)
);

-- Tabla Perro
create table Perro (
ID_Perro int not null unique,
Nombre varchar(50),
Fecha_nac date not null,
Sexo varchar(50),
DNI_Dueno int not null,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

-- Tabla Historial
create table Historial (
ID_Historial int not null unique,
Fecha date not null,
Perro int not null,
Descripcion varchar(100),
Monto varchar(50) not null,
PRIMARY KEY (ID_Historial),
FOREIGN KEY (Perro) REFERENCES Perro (ID_perro)
);

INSERT INTO Dueno VALUE(28957346,'Juan','Perez', 4789689,'Belgrano 101');
INSERT INTO Perro VALUE(1,'Puppy',13/12/2012,'Macho',28957346);
INSERT INTO Dueno VALUE(23546987,"Maria","Perez", 4897456,"Pueyrredon  811");
INSERT INTO Perro VALUE(2,"Fido",12/12/2012,"Macho", 23546987);
INSERT INTO Historial VALUE(10,09/07/2022,1,"Recuperado",12000);
INSERT INTO Historial VALUE(18,29/06/2021,1,"Recuperado",1800);
INSERT INTO Dueno VALUE(13547899,'Jose','Sanchez', 4186485,'Pellegrini 1542');
INSERT INTO Perro VALUE(45,'Chuchi',1/04/2005,'Hembra',13547899);
INSERT INTO Historial VALUE(45,31/09/2007,45,"Recuperado",750);

SELECT *
FROM Perro;

SELECT *
FROM Historial;

-- Actualizacion de fecha de nacimiento
UPDATE Perro
set Fecha_nac=15/12/2012
where ID_Perro=1;
select * from perro;

-- Vaciar la tabla historial
DROP TABLE HISTORIAL;

-- Borrar un animal que ya no va a ser atendido
delete from perro
where ID_perro=45;
select* from perro
















