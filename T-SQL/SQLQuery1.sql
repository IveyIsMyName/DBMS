USE PV_319_Import;
GO

--SELECT lesson_id, [group], discipline, teacher, [date], [time]
--FROM Schedule
--WHERE 
--    [group] = (SELECT group_id FROM Groups WHERE group_name = N'PD_321')
--    AND discipline = (SELECT discipline_id FROM Disciplines WHERE discipline_name = N'Теория баз данных, программирование MS SQL Server')
--    AND teacher = (SELECT teacher_id FROM Teachers WHERE last_name = N'Покидюк')
--    AND [date] = '2024-07-30'
--    AND [time] = '13:30';

DELETE FROM Schedule
WHERE lesson_id = 360;