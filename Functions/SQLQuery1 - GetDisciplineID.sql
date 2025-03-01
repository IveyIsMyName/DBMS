USE PV_319_Import;
GO

CREATE FUNCTION GetDisciplineID
(
@discipline_name AS NVARCHAR(150)
)
RETURNS SMALLINT
BEGIN
	RETURN (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE @discipline_name)
END
