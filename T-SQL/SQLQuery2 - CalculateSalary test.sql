USE PV_319_Import;
GO

EXEC sp_CalculateMonthlyTeacherSalary
@target_month = 10,
@target_year = 2024;

--SELECT * FROM Salary;
SELECT
	[Преподаватель] =	FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name),
	[Начислено]		=	accrued,
	[Получено]		=	recieved,
	[Месяц]			=	[month],--DATEPART(MONTH, [month]),
	[Год]			=	[year]--DATEPART(MONTH, [month]),
FROM  Salary, Teachers
WHERE teacher		=	teacher_id
ORDER BY [month]
;