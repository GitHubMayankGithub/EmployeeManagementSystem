# Employee Management System

Employee Management System is a simple ASP.NET Web Forms CRUD application built using:

- ASP.NET Web Forms (.NET Framework)
- Entity Framework Code First
- SQL Server
- Bootstrap UI

The application manages:

- Employees
- Skills
- Employee-Skill Mapping (Many-to-Many Relationship)

---

# Features

## Employee Module

- Add Employee
- Edit Employee
- Delete Employee
- List Employees
- Search Employee by Skill
- Unique Email Validation
- Multiple Skills Selection

## Skills Module

- Add Skill
- Edit Skill
- Delete Skill
- List Skills

## UI Features

- Bootstrap Styling
- Navigation Bar
- Client-side Validation
- Responsive CRUD Pages

---

# Technologies Used

- ASP.NET Web Forms
- C#
- Entity Framework 6
- SQL Server
- Bootstrap
- LINQ

---

# Database Design

## Tables

### Employee

| Column |
|---|
| EmployeeId |
| EmployeeCode |
| FirstName |
| LastName |
| Email |

### Skill

| Column |
|---|
| SkillId |
| SkillName |

### EmployeeSkill

| Column |
|---|
| EmployeeSkillId |
| EmployeeId |
| SkillId |

---

# Prerequisites

Before running this project install the following software.

---

# Step 1 — Install Visual Studio

Download:

https://visualstudio.microsoft.com/downloads/

Install:

## Visual Studio Community Edition

During installation select:

- ASP.NET and web development
- .NET Framework 4.8 SDK
- SQL Server Data Tools

Then click Install.

---

# Step 2 — Install SQL Server

Download SQL Server Express:

https://www.microsoft.com/en-us/sql-server/sql-server-downloads

Install:

## SQL Server Express

During installation choose:

- Basic Installation

---

# Step 3 — Install SQL Server Management Studio (SSMS)

Download SSMS:

https://learn.microsoft.com/en-us/ssms/install/install

Install normally.

SSMS is used to view tables and database records.

---

# Step 4 — Clone Project

Open terminal or command prompt.

Run:

```bash
git clone https://github.com/GitHubMayankGithub/EmployeeManagementSystem/tree/master/EmployeeManagementSystem
git clone https://github.com/GitHubMayankGithub/EmployeeManagementSystem.git

Step 5 — Open Project

Open Visual Studio.

Click:

Open a project or solution

Open:

EmployeeManagementSystem.sln


Step 6 — Restore NuGet Packages

In Visual Studio:

Tools
→ NuGet Package Manager
→ Package Manager Console

Run:

Update-Package -reinstall
This restores all missing packages automatically.

Step 7 — Configure Database Connection

Open:

Web.config

Find:

<connectionStrings>

Update connection string if required.

Update connection string if required.

Example:

<connectionStrings>
  <add name="EmployeeDbContext"
       connectionString="Data Source=.;Initial Catalog=EmployeeCrudDb;Integrated Security=True"
       providerName="System.Data.SqlClient" />
</connectionStrings>

Step 8 — Create Database Using Code First Migration

Open:

Tools
→ NuGet Package Manager
→ Package Manager Console

Run:

Update-Database

This command automatically:

Creates Database
Creates Tables
Applies Migrations

Step 9 — Verify Database in SSMS

Open SQL Server Management Studio.

Connect to:

(localdb)\MSSQLLocalDB

OR your SQL Server instance.

Expand:

Databases
→ EmployeeCrudDb
→ Tables

You should see:

Employees
Skills
EmployeeSkills


Step 10 — Run Application

In Visual Studio press:

F5

OR

Click:

IIS Express
The application will start in browser.

Default Pages
Employees
/Employees/List.aspx
Skills
/Skills/List.aspx

Entity Framework Packages Used
EntityFramework

Installed using:

Install-Package EntityFramework

Common Issues
Error: Update-Database not recognized

Run:

Install-Package EntityFramework

Restart Visual Studio.

Database Not Created

Ensure:

SQL Server installed
Connection string correct
Migration exists

Run:

Enable-Migrations
Add-Migration InitialCreate
Update-Database


Build Errors

Run:

Build
→ Clean Solution

Build
→ Rebuild Solution


Project Structure
EmployeeManagementSystem
│
├── Models
├── Data
├── Employees
├── Skills
├── Migrations
├── Content
├── Scripts
├── Site.Master
└── Web.config


Author

Mayank Chaubey