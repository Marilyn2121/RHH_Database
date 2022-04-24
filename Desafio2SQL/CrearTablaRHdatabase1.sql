use master
go
if not exists(
select name
from sys.databases
where name =  'BD_sg211663'
)
create database BD_sg211663
go

use  [BD_sg211663];


go
create table trabajador(
IDTrabajador int NOT NULL identity(1,1), 
IDGerente int null ,
IDPosicion int null,
IDDept int null,
PrimerNombre varchar(40) NOT NULL,
PrimerApellido varchar(40) NOT NULL,
Correo varchar(40) NOT NULL unique,
Telefono bigint NULL unique,
Salario int NOT NULL,
Comisiones int NULL, /*DEFAULT '0'*/
CONSTRAINT PK_Trabajador primary key(IDTrabajador)
);
go

create table trabajo (
IDPosicion int NOT NULL identity(2,2),
titulo varchar(40) NOT NULL unique,
salariomin int NOT NULL,
salariomax int NOT NULL,
CONSTRAINT PK_trabajo primary key (IDPosicion)
);

go

create table HistorialdeTrabajador( 
IDHistorial int NOT NULL identity(3,3),
IDTrabajador int not null unique,
DiaContratacion date NOT NULL ,
DiaRenunciaDespido date NOT NULL, /*DEFAULT '25/04/3355', dummy date dia falso cuanquier dia del cualquier mes con año 50 significa que aun esta trabajado */
CONSTRAINT PK_HistorialdeTrabajador primary key (IDHistorial)
);
go


create table departamento(
IDDept int NOT NULL identity(4,4),
IDLocacion int NOT NULL ,/*no unique puede haber varios departamentos con la misma location*/
NombreDept varchar(40) NOT NULL unique,
CONSTRAINT PK_departamento primary key (IDDept)
);
go

create table locacion (
IDLocacion int NOT NULL identity(5,5),
IDCiudad int NOT NULL,
DireccionCalle varchar(1000) NOT NULL unique,
CodigoPostal int NOT NULL unique,
Estado varchar(40) NOT NULL unique,
CONSTRAINT PK_locacion primary key (IDLocacion)
);
go

create table ciudad(
IDCiudad int NOT NULL identity(6,6),
IDRegion int NOT NULL ,
NombreCiudad varchar(40) NOT NULL unique,
CONSTRAINT PK_ciudad primary key (IDCiudad)
);
go

create table region(
IDRegion int NOT NULL identity(7,7),
NombreRegion varchar(40) NOT NULL unique,
CONSTRAINT PK_region primary key (IDRegion)
);
go

