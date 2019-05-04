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


insert into Alumnos values (1,'Andres', 'Hernandez', 'Yañez')
insert into Alumnos values (2,'Carlos', 'Hernandez', 'Perez')
insert into Alumnos values (3,'Brayan', 'Fernandez', 'Flores')
insert into Alumnos values (4,'Blanca', 'Peña', 'Ruiz')
insert into Alumnos values (5,'Reyna', 'Alanis', 'Gomez')
insert into Alumnos values (6,'Veronica', 'Castro', 'Trujillo')
insert into Alumnos values (7,'Everardo', 'Ruiz', 'Castellan')
insert into Alumnos values (8,'Brandon', 'Rivas', 'Cordoba')
insert into Alumnos values (9,'Javier', 'Hernandez', 'Snow')
insert into Alumnos values (10,'Anastacio', 'Figueroa', 'Targaryen')
insert into Alumnos values (11,'Paulo', 'Flores', 'Stark')

UPDATE Alumnos
SET id_alumnos = 1669625
WHERE nombre = 'Andres'
AND apellido_paterno = 'Hernandez';

DELETE FROM Alumnos
WHERE  id_alumnos = 11;

select * from Alumnos 

insert into Maestro values (1,'Pepe', 'Hernandez', 'Oroña')
insert into Maestro values (2,'Miguel', 'Fernandez', 'Nieto')
insert into Maestro values (3,'Raul', 'Perez', 'Fox')
insert into Maestro values (4,'Hector', 'Silva', 'Salinas')
insert into Maestro values (5,'Brandon', 'Davila', 'Rios')
insert into Maestro values (6,'Pablo', 'Hernandez', 'Reyes')
insert into Maestro values (7,'Juan', 'Hernandez', 'Hernandez')
insert into Maestro values (8,'Saul', 'Seanz', 'Cerda')
insert into Maestro values (9,'Laura', 'Yañez', 'Flores')
insert into Maestro values (10,'Sofia', 'Guzman', 'Lopez')
insert into Maestro values (11,'Alejandra', 'Guzman', 'Ruiz')

UPDATE Maestro
SET id_maestro = 5685457
WHERE id_maestro = 1;

DELETE FROM Maestro
WHERE  id_maestro = 11;

select * from Maestro


insert into Empleado values  (1, 'Juan', 'Perez', 'Cerda','10/02/2017')
insert into Empleado values  (2, 'Eber', 'Hernandez', 'Magaña', '20/12/2015')
insert into Empleado values  (3, 'Eduardo', 'Herrera','Rey', '30/03/2014')
insert into Empleado values  (4, 'Sergio', 'Perez','Hernandez', '16/07/2015')
insert into Empleado values  (5, 'Luis', 'Perez','Herrera', '16/08/2017')
insert into Empleado values  (6, 'Raul', 'Gomez','Monsivaes', '14/04/2012')
insert into Empleado values  (7, 'Miguel', 'Bose','Reyna', '10/02/2017')
insert into Empleado values  (8, 'Felipe', 'Reina','Canseco', '10/02/2017')
insert into Empleado values  (9, 'Juan', 'Manuel','Perez', '10/02/2017')
insert into Empleado values  (10, 'Andres', 'Hernandez','Lopez', '10/02/2017')
insert into Empleado values  (11, 'Jesus', 'Padilla','Saul', '10/02/2017')

UPDATE Empleado
SET id_empleado = 525454
WHERE id_empleado = 1;


DELETE FROM Empleado
WHERE  id_empleado = 11;

select * from Empleado

insert into Facultad values  (1, 'Facultad de ciencias fisico matematicas')
insert into Facultad values  (2, 'Facultad de musica')
insert into Facultad values  (3, 'Facultad de medicina')
insert into Facultad values  (4, 'Facultad de derecho')
insert into Facultad values  (5, 'Facultad de arquitectura')
insert into Facultad values  (6, 'Facultad de artes visuales')
insert into Facultad values  (7, 'Facultad de ingenieria civil')
insert into Facultad values  (8, 'Facultad de agronomia')
insert into Facultad values  (9, 'Facultad de ciencias quimicas')
insert into Facultad values  (10, 'Facultad de ciencias biologicas')
insert into Facultad values  (11, 'Facultad de economia')

UPDATE Facultad
SET id_facultad = 656454
WHERE id_facultad = 1;

DELETE FROM Facultad
WHERE  id_facultad = 11;

select * from Facultad


insert into Carrera values  (1, 'Licenciatura en Matemáticas')
insert into Carrera values  (2, 'Licenciatura en Fisica')
insert into Carrera values  (3, 'Licenciatura en Economia')
insert into Carrera values  (4, 'Licenciatura en Artes Visuales')
insert into Carrera values  (5, 'Licenciatura en Acturia')
insert into Carrera values  (6, 'Licenciatura en Ciencias Computacionales')
insert into Carrera values  (7, 'Licenciatura en Agronomia')
insert into Carrera values  (8, 'Licenciatura en Derecho')
insert into Carrera values  (9, 'Licenciatura en Criminologia')
insert into Carrera values  (10, 'Licenciatura en Diseño Industrial')
insert into Carrera values  (11, 'Ingeniero Civil')

UPDATE Carrera
SET id_carrera = 15214
WHERE id_carrera = 1;

DELETE FROM Carrera
WHERE  nombre_carrera = 'Ingeniero Civil' 

select * from Carrera

insert into Materia values  (1, 'Algebra')
insert into Materia values  (2, 'Calculo Diferencias')
insert into Materia values  (3, 'Fisica')
insert into Materia values  (4, 'Competencia Comunicativa')
insert into Materia values  (5, 'Programacion orientada a objetos')
insert into Materia values  (6, 'Ambiente y Sustentabilidad')
insert into Materia values  (7, 'Base de Datos')
insert into Materia values  (8, 'Telecomunicaciones')
insert into Materia values  (9, 'Calculo Integral')
insert into Materia values  (10, 'Algebra Lineal')
insert into Materia values  (11, 'Derecho Informatico')

UPDATE Materia
SET id_materia = 52648
WHERE id_materia = 1;

DELETE FROM Materia
WHERE  nombre_materia = 'Derecho Informatico';

select * from Materia

insert into Departamento values  (1, 'Becas')
insert into Departamento values  (2, 'Escolar')
insert into Departamento values  (3, 'Tesoreria')
insert into Departamento values  (4, 'Soporte Tecnico')
insert into Departamento values  (5, 'Limpieza')
insert into Departamento values  (6, 'Sub Direccion')
insert into Departamento values  (7, 'Direccion')
insert into Departamento values  (8, 'Coordinacion Academica')
insert into Departamento values  (9, 'Deportes')
insert into Departamento values  (10, 'Sociedad de Alumnos')
insert into Departamento values  (11, 'Desarrollo Sustentable')

UPDATE Departamento
SET id_departamento = 526
WHERE id_departamento = 1;

DELETE FROM Departamento
WHERE  id_departamento = 11;

select * from Departamento

insert into Calificacion values (1,100, 78)
insert into Calificacion values (2,80, 80)
insert into Calificacion values (3,75, 100)
insert into Calificacion values (4,96, 50)
insert into Calificacion values (5,70, 41)
insert into Calificacion values (6,80, 65)
insert into Calificacion values (7,90, 77)
insert into Calificacion values (8,95, 45)
insert into Calificacion values (9,65, 50)
insert into Calificacion values (10,80, 65)
insert into Calificacion values (11,75, 50)

UPDATE Calificacion
SET parcial_2= 70
WHERE parcial_2 = 41;

DELETE FROM Calificacion
WHERE  id_calificacion = 11;

select * from Calificacion

insert into Becarios values (1,'Andres', 'Hernandez', 'Sanchez')
insert into Becarios values (2,'Carlos', 'Hernandez', 'Flores')
insert into Becarios values (3,'Brayan', 'Fernandez', 'Gomez')
insert into Becarios values (4,'Blanca', 'Peña', 'Herrera')
insert into Becarios values (5,'Reyna', 'Alanis', 'Leon')
insert into Becarios values (6,'Veronica', 'Castro', 'Lennin')
insert into Becarios values (7,'Everardo', 'Ruis', 'Stalin')
insert into Becarios values (8,'Brandon', 'Rivas', 'Stark')
insert into Becarios values (9,'Javier', 'Hernandez', 'Flores')
insert into Becarios values (10,'Anastacio', 'Figueroa', 'Figueroa')
insert into Becarios values (11,'Paulo', 'Flores', 'Havok')

UPDATE Becarios
SET id_becario = 20265
WHERE nombre = 'Andres'
AND apellido_paterno = 'Hernandez';

DELETE FROM Becarios
WHERE  id_becario = 11;

select * from Becarios

insert into Grupo values (1)
insert into Grupo values (2)
insert into Grupo values (3)
insert into Grupo values (4)
insert into Grupo values (5)
insert into Grupo values (6)
insert into Grupo values (7)
insert into Grupo values (8)
insert into Grupo values (9)
insert into Grupo values (10)
insert into Grupo values (11)

UPDATE Grupo
SET id_grupo = 7
WHERE id_grupo = 10;

DELETE FROM Grupo
WHERE  id_grupo = 15;

select * from Grupo


