USE PV_319_Import;
GO

CREATE PROCEDURE sp_PrintScheduleByDates
@group_name			NVARCHAR(16),
@discipline_name	NVARCHAR(150) = N'',
@start_date			DATE,
@end_date			DATE

AS
BEGIN
	SELECT
			[Группа]		=		group_name,
			[Дисциплина]	=		discipline_name,
			[Преподаватель] =		FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name),
			[День]			=		DATENAME(WEEKDAY, [date]),
			[Дата]			=		[date],
			[Время]			=		[time],
			[Статус]		=		IIF(spent = 1, N'Проведено', N'Запланировано')
	FROM	Schedule, Groups, Disciplines, Teachers
	WHERE	[group]			=		group_id
	AND		discipline		=		discipline_id
	AND		teacher			=		teacher_id
	AND		group_name		=		@group_name
	AND		discipline_name	LIKE	IIF(@discipline_name = N'', N'%', @discipline_name)
	AND		[date]			BETWEEN @start_date AND @end_date
	ORDER BY[date], [time]
	;
END