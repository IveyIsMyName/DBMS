USE PV_319_Import;
SET DATEFIRST 1;
GO

EXEC sp_AddAllHolidaysFor 2025;

SELECT
		[date]		 AS ����,
		holiday_name AS �������� 
FROM	DaysOFF, Holidays
WHERE	holiday = holiday_id;