USE PV_319_Import;
GO

CREATE FUNCTION dbo.GetHolidayID(@hoilday_name NVARCHAR(15))RETURNS TINYINT
BEGIN
	RETURN (SELECT holiday_id FROM Holidays WHERE holiday_name LIKE @hoilday_name);
END