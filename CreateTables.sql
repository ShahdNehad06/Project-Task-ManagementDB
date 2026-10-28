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
CREATE TABLE TEAMS (
  teamID int IDENTITY(1,1) NOT NULL,
  teamName varchar(100) NOT NULL,
  teamLeaderID int NOT NULL,
  createdDate datetime2 NOT NULL DEFAULT GETDATE(),

  CONSTRAINT PK_TEAMS PRIMARY KEY (teamID),
  CONSTRAINT UQ_TEAMS_TeamName UNIQUE (teamName),
  CONSTRAINT FK_TEAMS_Employees FOREIGN KEY (teamLeaderID) REFERENCES Employees(EmployeeID)
); 
-- (1:1)relationship
CREATE UNIQUE INDEX IX_TEAMS_TeamLeaderID ON TEAMS(teamLeaderID);




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
CREATE TABLE Team_Members
  (
    Member_Team_ID INT  NOT NULL,
    Member_Employee_Id INT  NOT NULL,
    Join_Date DATE NOT NULL DEFAULT GETDATE(),
    
    CONSTRAINT PK_TeamMembers PRIMARY KEY(Member_Team_ID,Member_Employee_Id),
    CONSTRAINT FK_TeamMembers_Teams FOREIGN KEY (Member_Team_ID) REFERENCES TEAMS(teamID) ,
    CONSTRAINT FK_TeamMembers_Employees FOREIGN KEY (Member_Employee_Id) REFERENCES EMPLOYEES(EmployeeID)
    
  )




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

create table projects (
    id            int            identity(1,1) not null,
    project_name  varchar(100)   not null,
    client_id     int            not null,
    team_id       int            not null,
   [ start_date ]   date           not null,
    end_date      date           null,
    budget        decimal(12,2)  not null,
   [ status ]       varchar(20)    not null,

    constraint pk_projects primary key (id),

    constraint fk_projects_clients
        foreign key (client_id) references clients(id),

    constraint fk_projects_teams
        foreign key (team_id) references teams(teamid),

    constraint ck_projects_budget
        check (budget >= 0),

    constraint ck_projects_dates
        check (end_date is null or end_date >= [ start_date ]),

    constraint ck_projects_status
        check ([ status ] in ('planning', 'active', 'on hold', 'completed', 'cancelled'))
);



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

create table tasks (
    id           int           identity(1,1) not null,
    project_id   int           not null,
    assigned_to  int           null,
    title        varchar(100)  not null,
    [priority]   varchar(10)   not null,
    [status]     varchar(20)   not null,
    due_date     date          null,

    constraint pk_tasks primary key (id),
    constraint fk_tasks_projects foreign key (project_id) references projects(id),
    constraint fk_tasks_employees foreign key (assigned_to) references employees(employeeid),
    constraint ck_tasks_priority check ([priority] in ('low', 'medium', 'high')),
    constraint ck_tasks_status check ([status] in ('to do', 'in progress', 'done'))
);



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
CREATE TABLE Time_Logs (
  logID int IDENTITY(1,1) NOT NULL,
  taskID int NOT NULL,
  employeeID int NOT NULL,
  logDate date NOT NULL DEFAULT GETDATE(),
  hoursWorked decimal(4,2) NOT NULL,
  notes varchar(250),
 
  CONSTRAINT PK_TimeLogs PRIMARY KEY (logID),
  CONSTRAINT FK_TimeLogs_Tasks FOREIGN KEY (taskID) REFERENCES tasks(id),
  CONSTRAINT FK_TimeLogs_Employees FOREIGN KEY (employeeID) REFERENCES Employees(EmployeeID),
  CONSTRAINT CK_TimeLogs_HoursWorked CHECK (hoursWorked > 0 AND hoursWorked <= 24)
);
GO




