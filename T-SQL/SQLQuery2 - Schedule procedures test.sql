USE PV_319_Import;
SET DATEFIRST 1;
GO

--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'Разработка Windows-приложений на языке C++', N'Ковтун', N'2024-10-08', N'18:30';

--EXEC sp_PrintScheduleForGroup N'PD_321';

--SELECT * FROM Disciplines;
--EXEC sp_PrintScheduleByDates
--N'PV_319',
--N'',
--'2024-06-06',
--'2024-08-08'

--EXEC sp_SetScheduleForStacionarGroup N'PD_321', N'Разработка Web-приложений с использованием технологии ASP.NET', N'Покидюк', N'2024-10-17', N'13:30';
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

--SELECT * FROM Schedule;

--EXEC sp_ScheduleForBaseStacionarGroup
--N'PV_319',
--N'Hardware%',
--N'Кобылинский',
--N'2023-11-25',
--'18:30',
--6, 2, 0;

--EXEC sp_ScheduleForBaseStacionarGroup
--N'PV_319',
--N'Процедурное программирование %',
--N'Ковтун',
--N'2023-11-23',
--'18:30',
--4,2,1;

--EXEC sp_PrintScheduleForGroup N'PV_319'

--==================================================--

--EXEC sp_AddNewYearHolidaysFor 2025;

SELECT * FROM DaysOFF;
