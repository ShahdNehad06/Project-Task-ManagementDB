/*
Database Name: ProjectTaskManagementDB
File: InsertSampleData.sql

PURPOSE:
- Insert sample data into all seven tables.

TEAM INSTRUCTIONS:
1. Each member must insert sample data into their assigned table.
2. Use the exact table and column names defined in CreateTables.sql.
3. Insert data only after the table has been created.

INSERTION ORDER:
1. Clients
2. Employees
3. Teams
4. Team_Members
5. Projects
6. Tasks
7. Time_Logs

*/

USE ProjectTaskManagementDB;
GO


/*
TABLE 1: CLIENTS
Responsible Member: Farah Gamal Mohamed Abdelrahman

TASKS:
- Insert sample client records.
- Ensure email and phone values are unique.
- Follow all NOT NULL and DEFAULT constraints.
*/

-- TODO: Insert sample data into Clients.
GO
INSERT INTO clients (client_name, email, phone, company, created_date)
VALUES 
('Farah Gamal','farah.gamal@gmail.com', '01094193970', 'Tech Solutions', '2023-01-15'),
('Gamila Ahmed','gamilaahmed87@gmail.com', '01123456789', 'Global Trade', '2014-02-01'),
('Youssef Mohamed','youssef.mohamed@gmail.com', '01234567890', 'Smart Systems', '2020-03-10'),
('Ziad Mahmoud','ziad.mahmoud@gmail.com', '01211122233', 'Delta Group', '2026-04-05'),
('Mohamed Ali','mohamedali35@gmail.com', '01544455566', 'Alpha Inc', '2019-05-20'),
('Sama Omar', 'sama.omar@gmail.com', '01099988877', 'Creative Agency', '2024-06-12'),
('Yomna Tarek', 'yomna.tarek@gmail.com', '01155566677', 'Future Tech', '2026-07-01'),
('Ali Ibrahim', 'ali.ibrahim@gmail.com', '01277788899', 'Pioneer Systems', '2021-07-18'),
('Yassin Khaled', 'yassin.khaled@gmail.com', '01033344455', 'Nexus Media', '2012-08-22'),
('Assem Sherif', 'assemsherif1@gmail.com', '01144433322', 'Horizon Group', '2009-09-05'),
('Hana Ahmed','hanaah991@gmail.com', '01012345678', 'Tech Life', '2014-10-15');


/*
TABLE 2: EMPLOYEES
Responsible Member: Malak Tarek Ahmed Mohamed

TASKS:
- Insert sample employee records.
- Ensure email values are unique.
- Use valid salary, hire_date, and is_active values.
- Follow all table constraints.
*/

-- TODO: Insert sample data into Employees.
GO

INSERT INTO employees (firstname, lastname, email, job_title, salary, hire_date, is_active)
VALUES 
('Ahmed', 'Ali', 'ahmed.ali@test.com', 'Software Engineer', 5000.00, '2023-01-15', 1),
('Mona', 'Hassan', 'mona.hassan@test.com', 'HR Specialist', 7500.50, '2022-05-20', 1),
('Omar', 'Khaled', 'omar.khaled@test.com', 'Sales Manager', 6000.00, '2021-11-01', 0),
('Sara', 'Mahmoud', 'sara.mahmoud@test.com', 'Accountant', 8000.00, '2023-03-10', 1),
('Youssef', 'Ibrahim', 'youssef.ibrahim@test.com', 'Data Analyst', 6500.00, '2023-08-01', 1),
('Nourhan', 'Adel', 'nourhan.adel@test.com', 'UI/UX Designer', 7000.00, '2022-09-15', 1),
('Karim', 'Mostafa', 'karim.mostafa@test.com', 'DevOps Engineer', 9000.00, '2020-04-12', 1),
('Hoda', 'Samir', 'hoda.samir@test.com', 'Marketing Specialist', 5500.00, '2023-06-05', 0),
('Tarek', 'Nabil', 'tarek.nabil@test.com', 'Network Admin', 5800.00, '2021-02-28', 1),
('Rana', 'Emad', 'rana.emad@test.com', 'QA Engineer', 6200.00, '2023-10-01', 1),
('Ziad', 'Fathy', 'ziad.fathy@test.com', 'Backend Developer', 8500.00, '2022-12-10', 1),
('Farida', 'Osama', 'farida.osama@test.com', 'Project Manager', 11000.00, '2019-07-01', 1);



/*
TABLE 3: TEAMS
Responsible Member: Shahd Nehad Mohamed

TASKS:
- Insert sample team records.
- Ensure team names are unique.
- Follow all table constraints.
- Use existing Employee IDs for team_leader_id .
*/

-- TODO: Insert sample data into Teams.
GO
INSERT INTO Teams (teamName, createdDate, teamLeaderID)
VALUES
('DevOps Team', '2021-01-10', 7),
('UX/UI Team', '2023-03-15', 6),
('Data Analytics Team', '2024-02-01', 5),
('Software Development Team', '2024-05-20', 1),
('Backend Team', '2024-09-01', 11);




/*
TABLE 4: TEAM_MEMBERS
Responsible Member: Sara Mostafa Ismail Mohamed

TASKS:
- Insert team membership records.
- Use existing Team IDs and Employee IDs.
- Avoid duplicate team-employee combinations.
*/

-- TODO: Insert sample data into Team_Members.
GO
INSERT INTO Team_Members (Member_Team_ID, Member_Employee_Id)
VALUES
(1, 7),
(2, 6),
(3, 5),
(4, 1),
(5, 11),
(1, 1),
(2, 12),
(3, 9),
(4, 10),
(5, 3),
(4,4);

  




/*
TABLE 5: PROJECTS
Responsible Member: Amr Khaled Mohamed Abdelghany

TASKS:
- Insert sample project records.
- Use existing Client IDs and Team IDs.
- Follow budget, date, and status constraints.
*/

-- TODO: Insert sample data into Projects.
GO

insert into projects (project_name, client_id, team_id, start_date, end_date, budget, status)
values
    ('database management system',  140, 1, '2026-08-01', '2026-12-31', 45000.00,  'active'),
    ('e-commerce website',          141, 2, '2026-10-01', '2027-03-31', 120000.00, 'active'),
    ('client reporting dashboard',  142, 1, '2026-09-15', null,         30000.00,  'planning'),
    ('mobile app redesign',         143, 3, '2026-05-01', '2026-09-30', 75000.00,  'completed'),
    ('legacy system migration',     144, 2, '2026-06-01', '2026-08-15', 60000.00,  'cancelled');





/*
TABLE 6: TASKS
Responsible Member: Omar Mohamed Salah Eldin Awad

TASKS:
- Insert sample task records.
- Use existing Project IDs.
- Use valid Employee IDs when assigning tasks.
- Follow priority, status, and date constraints.
*/

-- TODO: Insert sample data into Tasks.
GO


insert into tasks (project_id, assigned_to, title, priority, status, due_date)
values
    (1, 1,    'set up database server environment',        'high',   'done',        '2026-09-15'),
    (1, 2,    'automate database deployment pipeline',     'high',   'in progress', '2026-11-05'),
    (1, 3,    'configure backups and monitoring',          'medium', 'in progress', '2026-11-10'),
    (1, null, 'write deployment documentation',            'low',    'to do',       null),
    (2, 2,    'design login page wireframes',              'high',   'to do',       '2026-11-20'),
    (2, 4,    'design user roles and permissions screens', 'medium', 'to do',       '2026-11-25'),
    (2, 5,    'run usability testing on checkout flow',    'high',   'in progress', '2026-11-15'),
    (3, 1,    'gather infrastructure requirements',        'medium', 'done',        '2026-10-01'),
    (3, null, 'plan dashboard deployment milestones',      'low',    'to do',       null),
    (3, 3,    'set up ci/cd pipeline for the dashboard',   'medium', 'to do',       '2026-12-01');


/*
TABLE 7: TIME_LOGS
Responsible Member: Shahd Nehad Mohamed

TASKS:
- Insert sample time log records.
- Use existing Task IDs and Employee IDs.
- Ensure hours_worked satisfies the CHECK constraint.
- Add notes when appropriate.
*/

-- TODO: Insert sample data into Time_Logs.
GO





/*
FINAL DATABASE TESTING
Responsible Member: Shahd Nehad Mohamed

TASKS:
1. Verify that all seven tables contain sample data.
2. Run SELECT queries on all tables.
3. Test JOIN queries across related tables.
4. Verify that foreign key relationships work correctly.
5. Check for duplicate values and invalid records.
6. Confirm that all three SQL scripts execute successfully.
*/

-- TODO: Add SELECT queries to verify the inserted data.

GO

-- TODO: Add JOIN queries to test table relationships.

GO

