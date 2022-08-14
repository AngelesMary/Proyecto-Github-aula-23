   -- BASE DE DATOS

create database pelu_canina;

use pelu_canina;

create table dueno
(
dni int,
nombre varchar (50) ,
apellido varchar (50),
telefono int,
direccion varchar (50),
constraint id_dueno_pk primary key (dni)
);

create table perro
(
id_perro int,
nombre varchar (50),
fecha_nac date,
sexo varchar (50),
dni_dueno int,
constraint id_perro_pk primary key (id_perro),
constraint dni_dueno_fk foreign key (dni_dueno) references dueno (dni)
);

create table historial
(
id_historial int,
fecha date,
perro int,
descripcion varchar (250),
monto float,
constraint id_historial_pk primary key (id_historial),	 
constraint perro_fk foreign key (perro) references perro (id_perro)
);


insert into dueno (dni, nombre, apellido, telefono, direccion) values
(43456089, "Jazmin", "Lopes", 22987842, " Caseros 269"),
(30951753, "Martin", "Sanches", 15325461, "Cogliati 1089"),
(35842684, "Rafa", "Nadal", 55148962, "Carhue 505"),
(28951368, "Martha", "Leiva", 56258914, "Pellegrini 8623"),
(37658145, "Enrique", "Lugo", 55937183, "Rivadavia 1022"),
(27147963, "Mara", "Jonas", 15324985, "Sarmiento 8666");


insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values
(1, "Toby", '2012-02-12', "macho", 33456789),
(2, "Rocco", '2022-01-16', "macho", 26951753),
(3, "Laica", '2013-08-13', "hembra", 31842684),
(4, "Lion", '2021-02-27', "macho", 24951368),
(5, "Chino", '2020-07-04', "macho", 39658145),
(6, "Chiquita", '2022-01-11', "hembra", 37147963);


insert into historial (id_historial, fecha, perro, descripcion, monto) values
(101, '2021-11-15', 2, "Baño", 1050),
(100, '2022-06-26', 1, "Baño y corte pelo", 4500),
(102, '2022-03-18', 4, "Corte pelo ", 2250),
(104, '2021-04-15', 5, "Baño", 3240),
(103, '2021-08-25', 3, "Baño y corte de uñas", 2500),
(105, '2022-08-19', 6, "Corte de pelo", 1500);


select id_perro, nombre
from perro
where sexo = "macho" and fecha_nac between '2020-01-01' and '2022-12-31';