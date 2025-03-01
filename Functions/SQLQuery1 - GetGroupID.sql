USE PV_319_Import;
GO

CREATE FUNCTION GetGroupID
(
	@group_name AS NVARCHAR(150)
)
RETURNS INT
BEGIN
	RETURN (SELECT group_id FROM Groups WHERE group_name=@group_name);
END