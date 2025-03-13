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
	VALUES				(0,			'��'	),
						(1,			'��'	),
						(2,			'��'	),
						(3,			'��'	),
						(4,			'��'	),
						(5,			'��'	),
						(6,			'���'	);

	-- �������� ������� ����� ��� �������� ������
	SELECT @week_days_mask = weekdays
	FROM Groups WHERE group_name = @group;

	-- ��������� ������ ��� � ���������� ������ � ����� ������
	SELECT @week_days = @week_days + day_name + ', '
	--FROM @day_names WHERE (@week_days_mask & LEFT_SHIFT(1, day_index)) != 0;
	FROM @day_names WHERE (@week_days_mask & POWER(2, day_index)) != 0;
	SELECT 
		@week_days	AS [��� ������],
		@group		AS [������];
END;