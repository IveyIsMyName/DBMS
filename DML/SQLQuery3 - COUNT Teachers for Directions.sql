USE PV_319_Import;
GO

SELECT
		[Направление обучения]		=	direction_name,
		[Количество преподавателей]	=	
			(SELECT	SUM(teachers.number_of_teachers) 
			FROM	(SELECT discipline_id, COUNT (teacher_id) AS number_of_teachers
					FROM Teachers, Disciplines, TeachersDisciplinesRelation
					WHERE		teacher		= teacher_id
					AND			discipline	= discipline_id
					GROUP BY	discipline_id	
					) teachers, DisciplinesDirectionsRelation
					WHERE discipline = discipline_id AND direction = direction_id
					)
FROM		Directions, Disciplines, DisciplinesDirectionsRelation
WHERE		direction		=		direction_id
AND			discipline		=		discipline_id
--GROUP BY	direction_name
;
SELECT discipline_name, COUNT (teacher_id) AS number_of_teachers
					FROM Teachers, Disciplines, TeachersDisciplinesRelation
					WHERE		teacher		= teacher_id
					AND			discipline	= discipline_id
					GROUP BY	discipline_name	
;