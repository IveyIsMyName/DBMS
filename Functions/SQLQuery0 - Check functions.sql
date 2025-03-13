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

PRINT (dbo.GetLastDateForGroup(N'PV_319'));