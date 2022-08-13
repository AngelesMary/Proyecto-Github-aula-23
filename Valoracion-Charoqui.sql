				          -- CREACION DE BASE DE DATOS
create database bdVeterinaria;

use bdveterinaria;

create table Dueno(
	DNI int not null primary key,
    nombre varchar(40) not null,
    apellido varchar(40) not null,
    telefono int not null,
    direccion varchar(40) null
);
 create table Perro(
	ID_perro int not null auto_increment primary key,
    nombre varchar(50) not null,
    fecha_nac date null,
    sexo varchar(20) not null,
    DNI_dueno int not null,
    foreign key (DNI_dueno) references Dueno(DNI)
);
create table Historial(
	ID_historial int not null auto_increment primary key,
    fecha date null,
    ID_perro int not null,
    descripcion varchar(50) null, 
    monto int not null,
    foreign key (ID_perro) references Perro(ID_perro)
);

										-- CONSULTAS
-- consulta 1
 create table Perro(
	ID_perro int not null auto_increment primary key,
    nombre varchar(50) not null,
    fecha_nac date null,
    sexo varchar(20) not null,
    DNI_dueno int not null,
    foreign key (DNI_dueno) references Dueno(DNI)
    );
-- consulta 2
use bdveterinaria;
insert into Dueno values(30857383,"Juan","Perez",408284,"San Martin 1267");
insert into Dueno values(35948283,"Lucas","Matino",405684,"Buenos Aires 1657");

insert into Perro(nombre,fecha_nac,sexo,DNI_dueno) values("Roco","2020-09-06","Macho",30857383);
insert into Perro(nombre,fecha_nac,sexo,DNI_dueno) values("Puppy","2012-12-12","Macho",35948283);

-- consulta 3
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-02-06",1,"Baño",2000);
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-03-06",1,"Baño",2000);
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-04-06",1,"Baño",2000);
insert into historial(fecha,ID_perro,descripcion,monto) values("2019-05-10",2,"Baño",2000);
insert into historial(fecha,ID_perro,descripcion,monto) values("2019-06-06",2,"Baño",2000);

select * from historial;
delete from historial where ID_perro=2;
delete from Perro where ID_Perro=2;

-- consulta 4
update Perro set fecha_nac="2020-06-06" where ID_perro=1;
-- sacando el check en safe update
update Perro set fecha_nac="2020-05-06" where nombre="Roco";

-- consulta 5
insert into Dueno values(35945937,"Pedro","Fernandez",8239684,"Buenos Aires 5897");
insert into Dueno values(47865937,"Pedro","Diaz",8272189,"Catamarca 2938");
insert into Perro(nombre,fecha_nac,sexo,DNI_dueno) values("Tita","2010-01-20","Hembra",35945937);
insert into Perro(nombre,fecha_nac,sexo,DNI_dueno) values("Felipe","2020-03-15","Macho",47865937);

select p.nombre as Nombre from Perro AS p inner join Dueno as d on p.DNI_dueno=d.DNI where d.nombre="Pedro";

-- Consulta 6
insert into historial(fecha,ID_perro,descripcion,monto) values("2021-05-10",3,"Corte de pelo",2000);
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-06-06",4,"Corte de pelo",2000);
select distinct p.nombre as Nombre from Perro AS p inner join historial as h on p.ID_perro=h.ID_perro where h.fecha between "2022-01-01" and "2022-12-31";

-- consulta 7
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-07-10",3,"Baño",3000);
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-07-06",4,"Baño",4000);

select sum(monto) as Ganancias_Julio from historial where fecha between "2022-07-01" and "2022-07-31";

-- consulta 8
insert into historial(fecha,ID_perro,descripcion,monto) values("2022-04-20",10,"Baño",2500);

-- consulta 9
update Dueno set direccion="Libertad 123" where DNI=35948283;

-- consulta 10
truncate historial;

-- consulta 11
insert into Perro(nombre,fecha_nac,sexo,DNI_dueno) values("Toto","2017-01-20","Macho",35945937);
select d.nombre as Nombre from Dueno as d inner join Perro as p on d.DNI=p.DNI_dueno inner join Historial as h on p.ID_perro=h.ID_perro where (p.fecha_nac between '2017-01-01' and  date_format(curdate(),'2017-%m-%d')) or (h.fecha not between '2022-01-01' and '2022-12-31' );

-- consulta 12
select nombre from Perro where sexo="Macho" and fecha_nac between "2020-01-01" and "2022-12-31";
