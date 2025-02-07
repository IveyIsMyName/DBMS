USE PV_319_DDL;
GO

CREATE TABLE Teachers
(
	teacher_id		INT				PRIMARY KEY,
	last_name		NVARCHAR(50)	NOT NULL,
	first_name		NVARCHAR(50)	NOT NULL,
	middle_name		NVARCHAR(50)		NULL,
	birth_date		DATE			NOT NULL,
);
