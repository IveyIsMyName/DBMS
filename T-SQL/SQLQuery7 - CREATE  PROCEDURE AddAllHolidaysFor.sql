USE PV_319_Import;
SET DATEFIRST 1;
GO

CREATE PROCEDURE sp_AddAllHolidaysFor @year AS SMALLINT
AS
BEGIN
	EXEC sp_AddHolidays @year, N'Нов%';
	EXEC sp_AddHolidays @year, N'23%';
	EXEC sp_AddHolidays @year, N'8%';
	EXEC sp_AddHolidays @year, N'Пасха';
	EXEC sp_AddHolidays @year, N'Май%';
	EXEC sp_AddHolidays @year, N'Лет%';
	EXEC sp_AddHolidays @year, N'День%';
---- Создаем временную таблицу для хранения списка праздников
--	CREATE TABLE #HolidaysList
--	(
--		row_id		INT IDENTITY(1,1) PRIMARY KEY,
--		holiday_name NVARCHAR(150)
--	);
---- Заполняем временную таблицу
--	INSERT #HolidaysList (holiday_name)
--	SELECT	holiday_name 
--	FROM	Holidays;

--	DECLARE
--		@current_rowID		AS INT = 1,
--		@max_rowID			AS INT,
--		@current_holiday	AS NVARCHAR(150);

---- Получаем максимальный ID для условия выхода из цикла
--	SELECT @max_rowID = MAX(row_id) 
--	FROM #HolidaysList;

---- Вызываем процедуру добавления праздника
--	WHILE @current_rowID <= @max_rowID
--	BEGIN
--		SELECT @current_holiday = holiday_name 
--		FROM #HolidaysList
--		WHERE row_id = @current_rowID;

--		EXEC sp_AddHolidays @year, @current_holiday;
--		SET @current_rowID += 1;
--	END
--	DROP TABLE #HolidaysList;
END