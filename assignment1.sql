-- recreate database
use employee;
-- create departments table
create table departments (department_id int auto_increment primary key,
department_name varchar(100) not null unique 
);
-- create location table
create table location (location_id int auto_increment primary key,
location_name varchar(100) not null unique
);
-- create empoloyees table
create table Employees ( emp_id int auto_increment primary key,
emp_name varchar(100) not null, 
gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F')),
age int check (age>=18),designation varchar(50),hire_date date default ( current_date),
department_id int,
location_id int,
constraint fk_department foreign key( department_id) references departments(department_id),
constraint fk_location foreign key( location_id) references location(location_id)
);
-- Add a new column named "email"
-- alter table employees add  email VARCHAR(255);

-- Modify the data type of the "designation" column to support a wider range
alter table Employees 
modify column designation VARCHAR(255);

-- Drop the “age” column
alter table Employees 
drop column age;

-- Rename the “hire_date” column to “date_of_joining”
alter table  Employees 
rename column  hire_date TO date_of_joining;
-- Rename the "Departments" table to "Departments_Info"
rename table  Departments TO Departments_Info;

-- Rename the "Location" table to "Locations"
rename table  Location TO Locations;
truncate table Employees;
-- Drop the Employees table
drop table if exists  Employees;

-- Drop the “employee” database
drop database if exists  employee;


