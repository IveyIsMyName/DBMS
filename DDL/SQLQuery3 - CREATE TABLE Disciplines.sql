USE PV_319_DDL;
GO

--CREATE TABLE Disciplines
--(
--	discipline_id		SMALLINT			PRIMARY KEY,
--	discipline_name		NVARCHAR(150)		NOT NULL,
--	number_of_lessons	TINYINT				NOT NULL
--);

--CREATE TABLE TeachersDisciplinesRelation
--(
--	teacher		INT,
--	discipline	SMALLINT,
--	PRIMARY KEY(teacher, discipline),
--	CONSTRAINT FK_TDR_teacher_2_Teachers	FOREIGN KEY (teacher)		REFERENCES Teachers(teacher_id),
--	CONSTRAINT FK_TDR_discipline			FOREIGN KEY (discipline)	REFERENCES Disciplines(discipline_id)
--);

--CREATE TABLE DisciplinesDirectionsRelation
--(
--	discipline	SMALLINT,
--	direction	TINYINT,
--	PRIMARY KEY(discipline, direction),
--	CONSTRAINT FK_DDR_discipline_2_Disciplines	FOREIGN KEY(discipline) REFERENCES Disciplines(discipline_id),
--	CONSTRAINT FK_DDR_direction_2_Directions	FOREIGN KEY(direction)	REFERENCES Directions(direction_id)
--);

--CREATE TABLE RequiredDisciplines
--(
--	discipline			SMALLINT,
--	required_discipline	SMALLINT,
--	PRIMARY KEY(discipline, required_discipline),
--	CONSTRAINT FK_RD_discipline_2_Disciplines	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id),
--	CONSTRAINT FK_RD_required_2_Disciplines		FOREIGN KEY (required_discipline) REFERENCES Disciplines(discipline_id)
--);

CREATE TABLE CompleteDisciplines
(
	discipline	SMALLINT,
	[group]		INT,
	PRIMARY KEY(discipline, [group]),
	CONSTRAINT	FK_CompleteDisciplines_Disciplines	FOREIGN KEY (discipline)	REFERENCES	Disciplines(discipline_id),
	CONSTRAINT	FK_CompleteDisciplines_Groups		FOREIGN KEY ([group])		REFERENCES Groups (group_id)
);