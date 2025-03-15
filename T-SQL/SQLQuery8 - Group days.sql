USE PV_319_Import;
GO

ALTER FUNCTION GetLearningDaysFor(@group_name NVARCHAR(10))RETURNS NVARCHAR(50)
--ALTER PROCEDURE sp_GetLearningDaysFor(@group_name NVARCHAR(10))
AS
BEGIN
	DECLARE
	@week	AS TABLE		 (id TINYINT, [day] NVARCHAR(50));
	INSERT  @week
			(id, [day])
	VALUES	
			(0,			'Ïí'	),
			(1,			'Âò'	),
			(2,			'Ñð'	),
			(3,			'×ò'	),
			(4,			'Ïò'	),
			(5,			'Ñá'	),
			(6,			'Âñê'	);
	DECLARE
	@mask	AS TINYINT		=(SELECT weekdays FROM Groups WHERE group_name = @group_name),
	@days	AS NVARCHAR(50) =N'';

	--PRINT @mask;

	DECLARE
	@day	AS TINYINT	= 0;
	WHILE @day < 7
	BEGIN
		IF (@mask & POWER(2, @day)) != 0
		BEGIN
			SET @days += (SELECT [day] FROM @week WHERE id = @day) + N', ';
		END
		SET @day += 1;	
	END
	  IF LEN(@days) > 0
		BEGIN
        SET @days = LEFT(@days, LEN(@days) - 1);
		END
	--PRINT  @days;
	RETURN @days;
END
	