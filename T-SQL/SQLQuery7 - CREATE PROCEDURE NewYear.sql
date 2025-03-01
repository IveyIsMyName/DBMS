USE PV_319_Import;
SET DATEFIRST 1;
GO

CREATE PROCEDURE sp_AddNewYearHolidaysFor
	@year		AS SMALLINT
AS

BEGIN
	DECLARE @new_year_date		AS DATE		= DATEFROMPARTS(2025, 01, 01);
	DECLARE @weekday			AS TINYINT  = DATEPART(WEEKDAY, @new_year_date);
	DECLARE @start_date			AS DATE		= DATEADD(DAY, -@weekday+1, @new_year_date);
	DECLARE @end_date			AS DATE		= DATEADD(DAY, 14, @start_date);
	PRINT(@new_year_date);
	PRINT(@weekday);
	PRINT(@start_date);
	WHILE @start_date < @end_date
	BEGIN
		IF NOT EXISTS (SELECT 1 FROM DaysOFF WHERE [date] = @start_date)
		BEGIN
		INSERT DaysOFF 
			([date], holiday)
		VALUES
			(@start_date, 1); --1 - это holiday_id для Новогодние Каникулы
		END
		SET @start_date = DATEADD(DAY, 1, @start_date);
	END
END
