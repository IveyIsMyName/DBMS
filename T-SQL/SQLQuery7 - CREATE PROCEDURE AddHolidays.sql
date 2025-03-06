USE PV_319_Import;
SET DATEFIRST 1;
GO

ALTER PROCEDURE sp_AddHolidays
@year	AS	SMALLINT,
@name	AS	NVARCHAR(150)
AS
BEGIN
	DECLARE 
		@start_date AS	DATE = dbo.GetHolidaysStartDate(@name, @year),
		@duration	AS TINYINT = dbo.GetHolidaysDuration(@name),
		@holiday_id AS TINYINT = dbo.GetHolidayID(@name);
	
	DECLARE 
		@date  AS DATE		= @start_date,
		@day   AS TINYINT	= 0;
	
	WHILE @day < @duration
	BEGIN
		INSERT DaysOFF 
				([date], holiday)
		VALUES (@date, @holiday_id);
		SET @day	+=1;
		SET @date	= DATEADD(DAY,1, @date);
	END
END
--DECLARE @holiday_id AS TINYINT;
	
--SELECT @holiday_id = holiday_id
--FROM Holidays
--WHERE holiday_name = @name;

-- IF @holiday_id IS NULL
--    BEGIN
--        RAISERROR('Праздник "%s" не найден в таблице Holidays. Проверьте название.', 16, 1, @name);
--        RETURN;
--    END

--	IF @name LIKE N'Нов%'
--	BEGIN
--		SET @start_date = dbo.GetNewYearHolidayStartDate(@year);
--		SET @duration = dbo.GetHolidaysDuration(@name);
--	END
--	ELSE IF @name LIKE N'Лет%'
--	BEGIN
--		SET @start_date = dbo.GetSummerHolidaysStart(@year);
--		SET @duration = dbo.GetHolidaysDuration(@name);
--	END	

--DECLARE @day AS INT = 0;
--WHILE @day < @duration
--BEGIN
--	INSERT DaysOFF ([date], holiday)
--	VALUES (DATEADD(DAY, @day, @start_date), @holiday_id);
--	SET @day += 1; 
--END
END