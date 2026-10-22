/*
File: CreateDatabase.sql
Responsible Member: Sara Mostafa Ismail Mohamed

TASKS:
1. Create the database named "ProjectTaskManagementDB".
2. Configure one primary data file (.mdf).
3. Configure at least one secondary data file (.ndf).
4. Configure at least two transaction log files (.ldf).
5. Set SIZE, MAXSIZE, and FILEGROWTH for all files.
6. Verify file paths and database settings.
*/

-- TODO: Create 'ProjectTaskManagementDB' and configure its storage files.


GO

-- Create the folder C:\TaskManagementFiles before running this script.

CREATE DATABASE ProjectTaskManagementDB
  -- Primary File
ON PRIMARY
(
    NAME = 'ProjectTaskManagementDB_Data1',
    FILENAME = 'C:\TaskManagementFiles\ProjectTaskManagementDB_Data1.mdf', 
    SIZE = 20 MB,
    FILEGROWTH = 10 MB,
    MAXSIZE = 100 MB
),
  FILEGROUP ProjectTaskManagementDB_Secondary
  -- Secondary Files
(
    NAME = 'ProjectTaskManagementDB_Data2',
    FILENAME = 'C:\TaskManagementFiles\ProjectTaskManagementDB_Data2.ndf',
    SIZE = 20 MB,
    FILEGROWTH = 10 MB,
    MAXSIZE = 100 MB
),
(
    NAME = 'ProjectTaskManagementDB_Data3',
    FILENAME = 'C:\TaskManagementFiles\ProjectTaskManagementDB_Data3.ndf',
    SIZE = 20 MB,
    FILEGROWTH = 10 MB,
    MAXSIZE = 100 MB
)
  -- Transaction Log Files
LOG ON 
(
    NAME = 'ProjectTaskManagementDB_Log1',
    FILENAME = 'C:\TaskManagementFiles\ProjectTaskManagementDB_Log1.ldf',
    SIZE = 10 MB,
    FILEGROWTH = 5 MB,
    MAXSIZE = 50 MB
),
(
    NAME = 'ProjectTaskManagementDB_Log2',
    FILENAME = 'C:\TaskManagementFiles\ProjectTaskManagementDB_Log2.ldf',
    SIZE = 10 MB,
    FILEGROWTH = 5 MB,
    MAXSIZE = 50 MB
);
