create database CompanyDB;
use CompanyDB;

create table Employees(
 EmployeeID int primary key,
 FirstName  varchar(50),
 LastName varchar(50),
 DepartmentID int foreign key (DepartmentID) references Departments,
 Salary decimal(38)
);

insert into Employees(EmployeeID,FirstName,LastName,DepartmentID,Salary,HireDate)values(1,'Rabia', 'Malik', 2 , 20000, '2023-11-11 13:23:44'),
(2,'Aliyan', 'Sheikh', 4 , 20000, '2023-11-12 15:45:21'),
(3,'Mahnoor', 'khan', 3 , 35000, '2023-11-14 11:12:01'),
(4,'Zunaira', 'Fatima', 1 , 40000,'2023-11-19 15:23:45'),
(5,'Ali', 'Mirza', 5 ,65000, '2023-11-06 15:23:44'), 
(6,'Saim', 'Ahmed', 1 , 98000, '2023-11-25 23:23:47'),
(7,'Farwa', 'Ali', 3 , 56000, '2023-11-21 22:25:49'),
(8,'Sheeza', 'sheikh', 4 , 78000,' 2023-04-11 14:20:50'),
(9,'Zehra', 'Fatima', 5 , 10000, '2023-11-26 10:21:48'),
(10,'Shahroz', 'Malik', 2 , 94000,'2023-11-18 22:15:46');

select * from Employees;

create table Departments(
 DepartmentID int primary key,
 DepartmentName varchar(50) 
);

insert into Departments( DepartmentID,DepartmentName)values (1 , 'Inch_Dep'),
(2, 'Acc_Dep'),
(3, 'Hr_Dep'),
(4, 'Finance_Dep'),
(5, 'Sales_Dep');

alter table Employees add HireDate datetime;

drop table Employees;


UPDATE Employees SET salary = salary * 1.1 where DepartmentID = 1;

delete from Employees where salary <30000;

Select * from Employees inner join Departments on Departments.DepartmentID = Employees.DepartmentID;
Select * from Employees right join Departments  on Departments.DepartmentID = Employees.DepartmentID;
Select * from Employees left join Departments  on Departments.DepartmentID = Employees.DepartmentID;

Select FirstName, LastName, HireDate from Employees where HireDate = 19;

select * from Departments;
select * from Employees;