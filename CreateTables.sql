/*
Project: Project and Task Management System
Database Name: ProjectTaskManagementDB
File: CreateTables.sql

TEAM INSTRUCTIONS:
1. Each member is responsible for their assigned table(s).
2. Follow the agreed table and column names.
3. Define primary keys, foreign keys, and named constraints.
4. Do not change another member's section without coordination.

TABLE CREATION ORDER:
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
- Define all columns and data types.
- Create the primary key: PK_Clients.
- Add NOT NULL constraints where required.
- Add UQ_Clients_Email.
- Add UQ_Clients_Phone.
- Set a default value for created_date.

DEPENDENCIES: None
*/

-- TODO: Create the Clients table.
GO
CREATE TABLE clients (
    id INT IDENTITY(140,1),
    client_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    company VARCHAR(100),
    created_date DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Clients PRIMARY KEY (id),
    CONSTRAINT UQ_Clients_Email UNIQUE (email),
    CONSTRAINT UQ_Clients_Phone UNIQUE (phone)
);


/*
TABLE 2: EMPLOYEES
Responsible Member: Malak Tarek Ahmed Mohamed

TASKS:
- Define all columns and data types.
- Create the primary key: PK_Employees.
- Add UQ_Employees_Email.
- Define salary and hire_date.

DEPENDENCIES: None
*/

-- TODO: Create the Employees table.
GO

CREATE TABLE Employees(
    EmployeeID INT IDENTITY(1,1) NOT NULL,
    firstname varchar(50) NOT NULL,
    lastname varchar(50) NOT NULL,
    Email varchar(100) NOT NULL,
    salary decimal(10,2) NOT NULL,
    job_title Varchar(50),
    hire_date date default getdate() NOT NULL,
    is_active bit default 1,
    constraint pk_employees primary key (employeeID),
    constraint UQ_employees_email UNIQUE (email)
);



/*
TABLE 3: TEAMS
Responsible Member: Shahd Nehad Mohamed

TASKS:
- Define all columns and data types.
- Create the primary key: PK_Teams.
- Add UQ_Teams_TeamName.
- Define created_date.
- Add team_leader_id  FK to Employees with a unique index

RELATIONSHIPS:
- Employees 1:1 Teams 

DEPENDENCIES: Employees
*/

-- TODO: Create the Teams table.
GO





/*
TABLE 4: TEAM_MEMBERS
Responsible Member: Sara Mostafa Ismail Mohamed

TASKS:
- Define team_id, employee_id, and join_date.
- Create a composite primary key using team_id and employee_id.
- Add FK_TeamMembers_Teams.
- Add FK_TeamMembers_Employees.
- Define an appropriate default for join_date.

RELATIONSHIPS:
- Teams 1:M Team_Members
- Employees 1:M Team_Members

DEPENDENCIES: Teams, Employees
*/

-- TODO: Create the Team_Members table.
GO





/*
TABLE 5: PROJECTS
Responsible Member: Amr Khaled Mohamed Abdelghany

TASKS:
- Define all columns and data types.
- Create the primary key: PK_Projects.
- Add FK_Projects_Clients.
- Add FK_Projects_Teams.
- Define budget and project status.
- Allow end_date to be NULL.
- Consider a CHECK constraint for budget.
- Consider validating end_date against start_date.

RELATIONSHIPS:
- Clients 1:M Projects
- Teams 1:M Projects

DEPENDENCIES: Clients, Teams
*/

-- TODO: Create the Projects table.
GO





/*
TABLE 6: TASKS
Responsible Member: Omar Mohamed Salah Eldin Awad

TASKS:
- Define all columns and data types.
- Create the primary key: PK_Tasks.
- Add FK_Tasks_Projects.
- Add FK_Tasks_Employees for assigned_to.
- Allow assigned_to and due_date to be NULL.
- Define priority and status.
- Consider CHECK constraints for priority and status.

RELATIONSHIPS:
- Projects 1:M Tasks
- Employees 1:M Tasks

DEPENDENCIES: Projects, Employees
*/

-- TODO: Create the Tasks table.
GO





/*
TABLE 7: TIME_LOGS
Responsible Member: Shahd Nehad Mohamed

TASKS:
- Define all columns and data types.
- Create the primary key: PK_TimeLogs.
- Add FK_TimeLogs_Tasks.
- Add FK_TimeLogs_Employees.
- Use DECIMAL(4,2) for hours_worked.
- Allow notes to be NULL.
- Consider a CHECK constraint for hours_worked.

RELATIONSHIPS:
- Tasks 1:M Time_Logs
- Employees 1:M Time_Logs

DEPENDENCIES: Tasks, Employees
*/

-- TODO: Create the Time_Logs table.
GO




