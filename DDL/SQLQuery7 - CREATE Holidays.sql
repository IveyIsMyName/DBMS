USE PV_319_Import;
GO

--DROP TABLE Holidays;

CREATE TABLE Holidays
(
	holiday_id		TINYINT		PRIMARY KEY,
	holiday_name	NVARCHAR(150)NOT NULL,
);
GO

INSERT Holidays
		(holiday_id, holiday_name)
VALUES
		(1,		N'Новогодние Каникулы'),
		(2,		N'23 Февраля'),
		(3,		N'8 марта'),
		(4,		N'Пасха'),
		(5,		N'Майские каникулы'),
		(6,		N'Летние каникулы'),
		(7,		N'День народного единства')
;
