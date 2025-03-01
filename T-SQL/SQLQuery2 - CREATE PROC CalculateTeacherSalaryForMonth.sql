USE PV_319_Import;
GO

ALTER PROCEDURE sp_CalculateMonthlyTeacherSalary
@target_month TINYINT,
@target_year  SMALLINT

AS
BEGIN

	BEGIN TRANSACTION;

	DELETE FROM Salary
	WHERE
		[month] = @target_month
	AND [year]  = @target_year;

	INSERT INTO Salary (teacher, accrued, recieved, [month], [year])
	SELECT
		Schedule.teacher,
		SUM(Teachers.rate) AS accured,
		0 AS receieved,
		@target_month,
		@target_year
	FROM Schedule
	INNER JOIN Teachers ON Schedule.teacher = Teachers.teacher_id
	WHERE
		DATEPART(MONTH, Schedule.[date]) = @target_month
	AND	DATEPART(YEAR, Schedule.[date]) = @target_year
	AND Schedule.spent = 1
	GROUP BY Schedule.teacher;

	COMMIT TRANSACTION;

	SELECT
		Teachers.last_name	AS Преподаватель,
		Salary.accrued		AS Начислено,
		Salary.recieved		AS Получено
	FROM Salary
	INNER JOIN Teachers ON Salary.teacher = Teachers.teacher_id
	WHERE
		Salary.[month] = @target_month
	AND	Salary.[year]  = @target_year;
	
END;