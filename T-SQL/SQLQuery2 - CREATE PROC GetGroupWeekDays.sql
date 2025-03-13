USE PV_319_Import;
GO
ALTER PROCEDURE sp_GetGroupWeekDays
	@group NVARCHAR(16)
AS
BEGIN
	DECLARE @week_days_mask	TINYINT,
			@week_days		NVARCHAR(50) = '';
	DECLARE	@day_names		TABLE (day_index TINYINT, day_name NVARCHAR(3));

	INSERT @day_names	(day_index, day_name)
	VALUES				(0,			'Пн'	),
						(1,			'Вт'	),
						(2,			'Ср'	),
						(3,			'Чт'	),
						(4,			'Пт'	),
						(5,			'Сб'	),
						(6,			'Вск'	);

	-- Получаем битовую маску для заданной группы
	SELECT @week_days_mask = weekdays
	FROM Groups WHERE group_name = @group;

	-- Проверяем каждый бит и формуируем строку с днями недели
	SELECT @week_days = @week_days + day_name + ', '
	--FROM @day_names WHERE (@week_days_mask & LEFT_SHIFT(1, day_index)) != 0;
	FROM @day_names WHERE (@week_days_mask & POWER(2, day_index)) != 0;
	SELECT 
		@week_days	AS [Дни недели],
		@group		AS [Группа];
END;