/*------------------insertar datos------------------*/
USE [BD_sg211663]

insert into [dbo].[region]
values('AMÉRICA DEL SUR'),('AMÉRICA CENTRAL'),('AMÉRICA DEL NORTE'),('EL CARIBE')
select * from [dbo].[region] /*como tiene el incrementable no se nesecita ingresar ningundato en la primary key*/

insert into [dbo].[ciudad]
values (21,'Mexico'),(14,'El Salvador'),(14,'Honduras'),(7,'Argentina'),(7,'Chile')
select * from [dbo].[ciudad]

insert into [dbo].[locacion]
values (6,'CARRETERA MEXICO-LAREDO',01020,'Mexicali'),(12,'CARRETERA SAN SALVADOR SAN MIGUEL K',06008,'ILOPANGO'),(18,'AV. EMILIANO ZAPATA NO.1',11101,'Tegucigalpa'),(30,'AV. REVOLUCION S/N',1426,'Capital Federal'),(24,'IGNACIO ALLENDE NO.20',8320000,'Santiago')
select * from [dbo].[locacion]


insert into [dbo].[departamento]
values (5,'Dirección'),
(10,'Recursos Rumanos'),
(20,'Ventas'),
(25,'Marketing'),
(25,'Contabilidad'),
(5,'Finanzas'),
(5,'Servicio Postventa'),
(10,'Administración de recursos'),
(20,'Decisiones tácticas'),
(20,'Gestión del cambio')
select * from [dbo].[departamento]

insert into [dbo].[trabajo]
values ('Auxiliar Contable',600,1000),('Admin. Recursos Humanos',800,1200),
('Ing. Software',1000,1200),('Representante',600,800),('Ejecutivo de Cuentas',600,1000),('Aux. Administrativo',1000,1200),
('CEO - Director Ejecutivo',2000,2500),('Director de Operaciones',800,3000),
('Responsable de marketing',600,800),('Responsable de Planeamiento y Gestión',600,800)
select * from [dbo].[trabajo]


insert into [dbo].[trabajador]
values (null,14,4,'M.CONSUELO','CACERES','consuelo_caceres@hotmail.com', 123456785,3000,1500) /*Jefe mayor*/
select * from [dbo].[trabajador]

insert into [dbo].[trabajador]
values (1,20,4, 'PABLO','CALDERON','pablo.calderon.cadiz@gmail.com', 111111119,1000,800),/*gerente Planeamiento y gestion*/
(1,4,4, 'PAULINA','BRAVO', 	'pbg@endesa.cl', 888888889,1000,800),/*gerente recursos humanos*/
(1,18,4, 'JORGE','BRITO', 	'oscar.brito@gmail.com', 876543217,1000,500), /*gerente marketing*/
(1,2,4, 'MARIA ANGELICA','BERGUEZ', 	'angelicabergez@gmail.com', 123412347,1000,800),/*gerente finanzas*/
(1,6,4, 'ALICIA','CAMPOS', 	'allicamposv@hotmail.com', 112233449,1000,500)/*gerente de Sofware*/
select * from [dbo].[trabajador]

insert into [dbo].[trabajador]/*lideres de equipos*/ 
values(2,20,40, 'JORGE','CASAJUANA', 	'jaimecasajuana@gmail.com', 123443217,650,100),
(3,8,12,  'JOAQUIN','CORDERO', 	'joacocordero@gmail.com', 131313139,800,50),
(4,18,16, 'JORGE','ESCOTE', 	'jlescote@gasco.cl', 420420420,750,100),
(5,2,20, 'CLAUDIO','FERNANDEZ', 	'cfernandez@isa.cl', 321654987,800,150),
(6,6,8,'JORGE','FORNES', 	'jmfornes@yahoo.com', 147852369,700,100)
select * from [dbo].[trabajador]

insert into [dbo].[trabajador] ([IDGerente],[IDPosicion],[IDDept],[PrimerNombre],[PrimerApellido],[Correo],[Telefono],[Salario])/*miembros de cada equipo*/
values(2,2,36, 'MARCELA','FIGUEROA', 	'marcelafigueroazamora@hotmail.com', 963852741,550),
(3,2,40, 'HUGO','CASTAÑEDA', 	'hugocastanedav@hotmail.com', 111122225,650),
(4,20,28, 'DIEGO','DURAN', 	'dddura69@gmail.com', 100410041,650),
(5,12,24, 'CATALINA','ECHEGOYEN', 	'khiton_@hotmail.com', 574454760,500),
(6,6,8, 'HILDA','FREITTE', 	'hfreitte2618@gmail.com', 741852963,500),
(2,4,12, 'MARIA RENE','GAETE', 	'mareneegaete@hotmail.com', 987654321,550),
(3,10,28, 'SUSANA','JORQUERA', 	'susana0413@hotmail.com', 123123123,650)
select * from [dbo].[trabajador]
