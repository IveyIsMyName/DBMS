USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
--PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
--PRINT(dbo.GetNewYearHolidayStartDate(2025));
--PRINT(dbo.GetSummerHolidaysStart(2023));
--SELECT * FROM Holidays;

--DECLARE @holiday	AS	NVARCHAR(150)	= N'Нов%';
--DECLARE @year		AS	SMALLINT		= 2025;
--PRINT(dbo.GetHolidayStartDate(@holiday, @year));

--DECLARE @month		AS TINYINT = (SELECT [month] FROM Holidays WHERE holiday_name LIKE @holiday);
--	DECLARE @day		AS TINYINT = (SELECT [day]	 FROM Holidays WHERE holiday_name LIKE @holiday);
--	DECLARE @start_date AS DATE;
	
--	SET @start_date = CASE 
--        WHEN @holiday LIKE N'Нов%' THEN dbo.GetNewYearHolidayStartDate(@year)
--        WHEN @holiday LIKE N'Лет%'     THEN dbo.GetSummerHolidaysStart(@year) 
--		WHEN @month != 0 AND @day != 0 THEN DATEFROMPARTS(@year, @month, @day)
--		ELSE NULL
--		END;

--PRINT(dbo.GetHolidayStartDate(N'8%', 2024));

--PRINT(dbo.GetEasterDate(2011));

--PRINT (dbo.GetLastDateForGroup(N'PV_319'));

--PRINT (dbo.GetMaxLearningDayFor(N'PV_319'));
--EXEC sp_GetMaxLearningDayFor N'PV_319';
--PRINT (dbo.GetNextLearningDayFor(N'PV_319'));
--EXEC sp_PrintScheduleForGroup N'PV_319';

DECLARE @group	AS NVARCHAR(10) = N'PV_319'
DECLARE @date	AS DATE			= dbo.GetLastDateForGroup(@group);
WHILE @date < '2025-01-01'
BEGIN
	PRINT (@date);
	PRINT (DATENAME(WEEKDAY, @date));
	PRINT ('-------------------------------------');
	SET		@date = dbo.GetNextLearningDateFor(@group);
END