USE PV_319_Import;
GO

EXEC sp_CalculateMonthlyTeacherSalary
@target_month = 8,
@target_year = 2024;

--SELECT * FROM Salary;
SELECT
	[�������������] =	FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name),
	[���������]		=	accrued,
	[��������]		=	recieved,
	[�����]			=	[month],
	[���]			=	[year]
FROM  Salary, Teachers
WHERE teacher		=	teacher_id
ORDER BY [month]
;