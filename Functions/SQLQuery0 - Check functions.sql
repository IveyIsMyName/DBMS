USE PV_319_Import;

GO

PRINT(dbo.GetGroupID(N'PV_319'));
PRINT(dbo.GetDisciplineID(N'Hardware%'));
PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));