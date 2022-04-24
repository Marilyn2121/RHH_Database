use BD_sg211663

select * from [dbo].[trabajador]
select * from [dbo].[departamento]
select * from [dbo].[locacion]
select * from [dbo].[trabajo]

select [IDTrabajador],IDGerente,PrimerNombre,PrimerApellido,Correo,Salario,P.IDPosicion,titulo
from [dbo].[trabajador] AS T JOIN [dbo].[trabajo] as P
ON T.[IDPosicion]= P.[IDPosicion]

select [IDTrabajador],IDGerente,PrimerNombre,PrimerApellido,Correo,Salario,P.IDPosicion,titulo
FROM [dbo].[trabajador] AS T JOIN [dbo].[trabajo] as P
ON T.[IDPosicion]= P.[IDPosicion]
where T.[Salario] >700 

select [IDTrabajador],IDGerente,PrimerNombre,PrimerApellido,Correo,Salario,P.IDPosicion,titulo,D.NombreDept,L.DireccionCalle,L.Estado
from [dbo].[trabajador] as T,[dbo].[departamento] as D,[dbo].[locacion] as L, [dbo].[trabajo] as P
where D.[IDDept] = T.[IDDept] and D.[IDLocacion] = L.[IDLocacion] and T.IDPosicion = P.IDPosicion


 




