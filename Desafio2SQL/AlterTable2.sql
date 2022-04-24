/*------------------Alter table Foreing keys---------------------*/

USE [BD_sg211663]
/*tabla trabajador*/
ALTER TABLE [dbo].[trabajador]
ADD CONSTRAINT FK_IDGerenteTrabajador FOREIGN KEY (IDGerente)
REFERENCES [dbo].[trabajador](IDTrabajador);

 alter table trabajador
 ADD CONSTRAINT FK_IDPosicionTrabajador FOREIGN KEY (IDPosicion) 
 REFERENCES trabajo(IDPosicion);

 alter table trabajador
 ADD CONSTRAINT FK_IDDeptTrabajador FOREIGN KEY (IDDept) 
 REFERENCES departamento(IDDept);

 /*tabla Historial*/
  alter table [dbo].[HistorialdeTrabajador]
 ADD CONSTRAINT FK_IDTrabajadorHistorial FOREIGN KEY (IDTrabajador) 
 REFERENCES [dbo].[trabajador](IDTrabajador);

  /*tabla departamento*/

 alter table [dbo].[departamento]
 ADD CONSTRAINT FK_IDLocacionDepartamento FOREIGN KEY (IDLocacion) 
 REFERENCES [dbo].[locacion](IDLocacion);

   /*tabla locacion*/
 alter table [dbo].[locacion]
 ADD CONSTRAINT FK_IDCiudadLocacion FOREIGN KEY (IDCiudad) 
 REFERENCES [dbo].[ciudad](IDCiudad);

  /*tabla ciudad*/
 alter table [dbo].[ciudad]
 ADD CONSTRAINT FK_IDRegionCiudad FOREIGN KEY (IDRegion) 
 REFERENCES [dbo].[region](IDRegion);

 /*------------------Alter table default---------------------*/
ALTER TABLE [dbo].[trabajador]
ADD CONSTRAINT df_Comision
DEFAULT 0 FOR [Comisiones];

ALTER TABLE [dbo].[HistorialdeTrabajador]
ADD CONSTRAINT df_diadespidorenuncia
DEFAULT '2050-04-22' FOR [DiaRenunciaDespido];

 /*------------------Alter table CHECKs---------------------*/

ALTER TABLE [dbo].[trabajador]
add constraint CHK_Correo check (CharIndex('@',[Correo]) between 2 And (len(Correo)-1));

ALTER TABLE [dbo].[trabajador]
add constraint CHK_Telefono check (Telefono > 0);

ALTER TABLE [dbo].[trabajador]
add constraint CHK_Salario check (Salario > 0);

alter table [dbo].[trabajo]
add constraint CHK_Smin check (salariomin > 0);

alter table [dbo].[trabajo]
add constraint CHK_Smax check (salariomax > 0);

