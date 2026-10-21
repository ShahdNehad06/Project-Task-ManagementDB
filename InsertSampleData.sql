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





/*
TABLE 3: TEAMS
Responsible Member: Shahd Nehad Mohamed

TASKS:
- Insert sample team records.
- Ensure team names are unique.
- Follow all table constraints.
*/

-- TODO: Insert sample data into Teams.
GO





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

