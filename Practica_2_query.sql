create database practica_5
use practica_5

create table Alumnos(
id_alumnos int not null,
nombre varchar (40),
apellido_paterno varchar (40),
apellido_materno varchar (40)
)

create table Maestro(
id_maestro int not null,
nombre varchar (40),
apellido_paterno varchar (40),
apellido_materno varchar (40) 
)

create table Empleado(
id_empleado int not null,
nombre varchar (40),
apellido_paterno varchar (40), 
apellido_materno varchar (40), 
fecha_ingreso date 
)

create table Facultad(
id_facultad int not null,
nombre_facultad varchar (40) 
)

create table Departamento(
id_departamento int not null,
nombre_departamento varchar (40) 
)

create table Materia(
id_materia int not null,
nombre_materia varchar (40) 
)

create table Calificacion(
id_calificacion int not null,
parcial_1 int,
parcial_2 int
)

create table Grupo(
id_grupo int not null,
)

create table Becarios(
id_becario int not null,
nombre varchar (40),
apellido_paterno varchar (40),
apellido_materno varchar (40),
)

create table Carrera(
id_carrera int not null,
nombre_carrera varchar (40)
)

insert into Maestro (nombre, apellido_paterno, apellido_materno)
values ('Miguel', 'Hernandez', 'Perez')
select * from Maestro

insert into Empleado(nombre, apellido_paterno, apellido_materno, fecha_ingreso)
values ('Jose', 'Ornelas', 'Lino','23/02/2016')
select * from Empleado

insert into Becarios(nombre, apellido_paterno, apellido_materno)
values ('Saul', 'Gomez', 'Davila')
select * from Becarios

insert into Calificacion(parcial_1, parcial_2)
values (75, 90)
select * from Calificacion
