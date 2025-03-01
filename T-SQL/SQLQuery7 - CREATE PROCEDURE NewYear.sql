USE PV_319_Import;
SET DATEFIRST 1;
GO

ALTER PROCEDURE sp_AddNewYearHolidaysFor
	@year		AS SMALLINT
AS
BEGIN
	DECLARE @new_year_date		AS DATE		= DATEFROMPARTS(@year, 01, 01);
	DECLARE @weekday			AS TINYINT  = DATEPART(WEEKDAY, @new_year_date);
	DECLARE @start_date			AS DATE		= DATEADD(DAY, -@weekday+1, @new_year_date);
	DECLARE @date				AS DATE		= @start_date;
	--DECLARE @end_date			AS DATE		= DATEADD(DAY, 14, @start_date);
	DECLARE @duration			AS TINYINT  = (SELECT duration FROM Holidays WHERE holiday_id=1);
	--DECLARE @day				AS TINYINT  = 0;

	PRINT(@new_year_date);
	PRINT(@weekday);
	PRINT(@start_date);

	WHILE @duration > 0
	BEGIN
		INSERT DaysOFF 
			([date], holiday)
		VALUES
			(@date, 1); --1 - это holiday_id для Новогодние Каникулы
		SET @date		= DATEADD(DAY, 1, @date);
		SET @duration	= @duration-1;
	END
END
