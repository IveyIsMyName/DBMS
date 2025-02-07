USE PV_319_DDL;
GO

CREATE TABLE Groups
(
	group_id		INT				PRIMARY KEY,
	group_name		NVARCHAR(16)	NOT NULL,
	direction		TINYINT			NOT NULL
	CONSTRAINT FK_Groups_Directions FOREIGN KEY REFERENCES Directions(direction_id)
);