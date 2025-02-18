USE PV_319_Import;
GO

--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'%UML%', N'Ковтун', N'2024-08-10', N'18:30';

--EXEC sp_PrintScheduleForGroup N'PV_319', N'%UML%';

EXEC sp_PrintScheduleByDates
N'PV_319',
N'',
'2024-06-06',
'2024-08-08'



--SELECT * FROM Schedule;