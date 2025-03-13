USE PV_319_Import;
GO

ALTER FUNCTION GetHolidaysStartDate(@holiday NVARCHAR(150), @year SMALLINT)RETURNS DATE
BEGIN
	DECLARE @month		AS TINYINT = (SELECT [month] FROM Holidays WHERE holiday_name LIKE @holiday);
	DECLARE @day		AS TINYINT = (SELECT [day]	 FROM Holidays WHERE holiday_name LIKE @holiday);
	DECLARE @start_date AS DATE;
	
	SET @start_date = CASE 
        WHEN @holiday LIKE N'Нов%'		THEN dbo.GetNewYearHolidayStartDate(@year)
        WHEN @holiday LIKE N'Лет%'		THEN dbo.GetSummerHolidaysStart(@year) 
		WHEN @holiday LIKE N'Пасха'		THEN dbo.GetEasterDate(@year)
		WHEN @month != 0 AND @day != 0	THEN DATEFROMPARTS(@year, @month, @day)
		ELSE NULL
		END;
		RETURN @start_date;
END