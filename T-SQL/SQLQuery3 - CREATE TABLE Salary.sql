USE PV_319_Import;
GO

--IF OBJECT_ID('Salary', 'U') IS NOT NULL
--   DROP TABLE Salary;

CREATE TABLE Salary
(
	payment_id	BIGINT						PRIMARY KEY,
	teacher		SMALLINT		NOT NULL	CONSTRAINT FK_Salary_teachers REFERENCES Teachers(teacher_id),
	accrued		SMALLMONEY		NOT NULL,
	recieved	BIT	DEFAULT 0	NOT NULL,
	[month]		TINYINT			NOT NULL, 
    [year]		SMALLINT		NOT NULL 
);