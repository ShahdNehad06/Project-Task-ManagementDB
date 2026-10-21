# Project and Task Management System

## Project Overview

A database system designed to manage clients, projects, tasks, employees, teams, team members, and work hours. The system uses SQL Server to organize data and maintain relationships between the database tables.

## Database Tables

The database consists of the following seven tables:

1. `Clients`
2. `Employees`
3. `Teams`
4. `Team_Members`
5. `Projects`
6. `Tasks`
7. `Time_Logs`

## Project Structure

The project contains three SQL files in the `database` folder:

- `CreateDatabase.sql`: Database storage files configuration.
- `CreateTables.sql`: Creation of the seven tables and their constraints.
- `InsertSampleData.sql`: Sample data, SQL queries, and database testing.

The `design` folder contains the ERD and Mapping Diagram images, and `README.md` provides an overview of the project and team responsibilities.

### SQL Files Description

- **`CreateDatabase.sql`**: Creates the database storage files, including the primary data file (`.mdf`), secondary data file (`.ndf`), and at least two transaction log files (`.ldf`). It also configures `SIZE`, `MAXSIZE`, and `FILEGROWTH`.
- **`CreateTables.sql`**: Creates the seven database tables, including their columns, data types, primary keys, foreign keys, and named constraints.
- **`InsertSampleData.sql`**: Inserts sample data into the tables and contains SQL queries, JOIN examples, and tests to verify that the database and its relationships work correctly.

### Design Files

- **`ERD.png`**: The Entity Relationship Diagram showing the entities and their relationships.
- **`Mapping_Diagram.png`**: The relational schema mapping showing the tables, columns, primary keys, and foreign keys.

## Team Members and Responsibilities

### 1. Shahd Nehad Mohamed — Team Leader

- Create the `Teams` and `Time_Logs` tables.
- Insert sample data into Teams and Time_Logs.
- Integrate and test the complete database and all SQL scripts.

### 2. Sara Mostafa Ismail Mohamed

- Create and configure the database storage files.
- Create the `Team_Members` junction table.
- Insert sample data into Team_Members.

### 3. Omar Mohamed Salah Eldin Awad

- Create the `Tasks` table.
- Define its columns, primary key, foreign keys, and constraints.
- Insert sample data into Tasks.

### 4. Malak Tarek Ahmed Mohamed

- Create the `Employees` table.
- Define its columns, primary key, and constraints.
- Insert sample data into Employees.

### 5. Farah Gamal Mohamed Abdelrahman

- Create the `Clients` table.
- Define its columns, primary key, and constraints.
- Insert sample data into Employees.

### 6. Amr Khaled Mohamed Abdelghany

- Create the `Projects` table.
- Define its columns, primary key, foreign keys, and constraints.
- Insert sample data into Projects.

## Team Rules

- Each member must work on their assigned tasks and coordinate with other members when necessary.
- All members must follow the agreed table names, column names, and data types.
- Every table must have an appropriate primary key.
- Foreign keys and named constraints must be defined consistently.
- Tables must be created in the correct dependency order.
- Sample data must respect all primary key, foreign key, and other constraint rules.
- All SQL scripts must be tested before merging into the main branch.
