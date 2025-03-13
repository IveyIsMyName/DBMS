USE PV_319_Import;
SET DATEFIRST 1;
GO

--DELETE FROM Schedule;
--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'Процедурное программирование %', N'Ковтун', N'2023-11-23', N'18:30';
--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'Hardware%', N'Кобылинский', N'2023-11-25', N'18:30',6, 2, 0;


--SELECT * FROM Disciplines;
--EXEC sp_PrintScheduleByDates
--N'PV_319',
--N'',
--'2024-06-06',
--'2024-08-08'


--
--EXEC sp_PrintScheduleForGroup N'PD_321';
--EXEC sp_PrintScheduleForGroupPeriod
--N'PМ_319',
--'2024-06-01',
--'2024-07-01'



--DECLARE @salary AS SMALLMONEY;
--EXEC @salary = sp_CountTeachersMonthSalary N'Ковтун', 2024, 06;
--PRINT (@salary);


--DROP PROCEDURE sp_ScheduleForBaseStacionarGroup;
--DELETE FROM Schedule
--WHERE 
--    [group] = (SELECT group_id FROM Groups WHERE group_name = N'PD_321')
--    AND discipline = (SELECT discipline_id FROM Disciplines WHERE discipline_name = N'Язык программирования PHP')
--    AND teacher = (SELECT teacher_id FROM Teachers WHERE last_name = N'Покидюк')

--==================================================--

--EXEC sp_AddNewYearHolidaysFor 2024;
--SELECT * FROM Holidays;

--EXEC sp_AddHolidays 2025, N'Новогодние каникулы';
--SELECT * FROM DaysOFF;
--SELECT * FROM Schedule;
--DELETE FROM Schedule;
--EXEC sp_ScheduleForBaseStacionarGroup
--N'PV_319',
--N'Hardware%',
--N'Кобылинский',
--N'2023-11-25',
--'18:30',
--6, 2, 0;
--
--EXEC sp_ScheduleForBaseStacionarGroup
--N'PV_319',
--N'Процедурное программирование %',
--N'Ковтун',
--N'2023-11-23',
--'18:30',
--4,2,1;
--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'Объектно%', N'Ковтун', N'2024-06-01', '18:30'
--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'%UML%', N'Ковтун', N'2024-08-10', '18:30'
--EXEC sp_PrintScheduleForGroup N'PV_319'
--===================================================================================---

--SELECT @@VERSION;
--EXEC sp_GetGroupWeekDays N'PV_319'
--PRINT (dbo.GetLearningDaysFor(N'PV_319'));
EXEC sp_GetLearningDaysFor N'PV_319';