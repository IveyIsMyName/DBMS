USE PV_319_Import;
GO

--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'���������� Windows-���������� �� ����� C++', N'������', N'2024-10-08', N'18:30';

EXEC sp_PrintScheduleForGroup N'PD_321';

--SELECT * FROM Disciplines;
--EXEC sp_PrintScheduleByDates
--N'PV_319',
--N'',
--'2024-06-06',
--'2024-08-08'

--EXEC sp_SetScheduleForStacionarGroup N'PD_321', N'���������� Web-���������� � �������������� ���������� ASP.NET', N'�������', N'2024-10-17', N'13:30';
--
--EXEC sp_PrintScheduleForGroup N'PD_321';
--EXEC sp_PrintScheduleForGroupPeriod
--N'P�_319',
--'2024-06-01',
--'2024-07-01'

--DECLARE @salary AS SMALLMONEY;
--EXEC @salary = sp_CountTeachersMonthSalary N'������', 2024, 06;
--PRINT (@salary);

--EXEC sp_ScheduleForBaseStacionarGroup
--N'PV_319',
--N'����������� ���������������� %',
--N'������',
--N'2023-11-23',
--'18:30',
--2, 4, 6, 2, 1;

--DELETE FROM Schedule
--WHERE 
--    [group] = (SELECT group_id FROM Groups WHERE group_name = N'PD_321')
--    AND discipline = (SELECT discipline_id FROM Disciplines WHERE discipline_name = N'���� ���������������� PHP')
--    AND teacher = (SELECT teacher_id FROM Teachers WHERE last_name = N'�������')

--SELECT * FROM Schedule;