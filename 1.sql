1️⃣ NOT NULL
Create a table Students where student_name and phone_number must not accept NULL values.
Create table Students(id int  auto_increment primary key , student_name varchar(20) not null, phone_number varchar(15) not null);

2️⃣ NOT NULL
Create a table Employees where emp_name and department cannot be NULL.
Create table Employees(emp_id int auto_increment  primary key, emp_name varchar(20) not null, department varchar(20) not null);

3️⃣ UNIQUE
Create a table Users where username must be unique.
Create table Users(user_id int auto_increment  primary key, user_name varchar(30) unique);

4️⃣ UNIQUE
Create a table Customers where email does not allow duplicate values.
Create table Customers(id int primary key, email varchar(20) unique);

5️⃣ DEFAULT
Create a table Orders where order_status defaults to 'Pending'.
Create table Orders(order_id int primary key, order_status varchar(20) default ‘Pending’);

6️⃣ DEFAULT
Create a table Accounts where created_date automatically stores the current date.
CREATE TABLE Accounts (account_id INT PRIMARY KEY, created_date DATE DEFAULT CURRENT_DATE);

7️⃣ AUTO_INCREMENT
Create a table Products where product_id auto-increments automatically.
Create table products(product_id int auto_increment primary key, product_ name varchar(10));



8️⃣ AUTO_INCREMENT
Create a table Students where roll_no starts automatically from 1.
Create table students(roll_no int auto_increment primary key, s_name varchar(10));

9️⃣ CHECK
Create a table Employees where salary must be greater than 10000.
Create table Employees(emp_id int primary key, salary int check (salary>10000));

🔟 CHECK
Create a table Marks where score must be between 0 and 100.
Create table Marks(id int, score int check(score between 0 and 100));

1️⃣1️⃣ CHECK
Create a table Accounts where age must be 18 or above.
Create table Accounts(age int check (age>=18));

1️⃣2️⃣ Multiple Constraints
Create a table Login where:
•	email is NOT NULL
•	email is UNIQUE
create table Login(email varchar(20) not null unique);

1️⃣3️⃣ Multiple Constraints
Create a table Products where:
•	price cannot be NULL
•	price must be greater than 0
create table products(price int not null check (price>0));


1️⃣4️⃣ DEFAULT + CHECK
Create a table Tickets where:
•	status defaults to 'Open'
•	priority must be between 1 and 5
create table Tickets(status varchar(20) default  ’Open’ , priority int check (priority between 1 and 5));

1️⃣5️⃣ AUTO_INCREMENT + UNIQUE + NOT NULL
Create a table Employee_Details where:
•	emp_id is AUTO_INCREMENT
•	email is UNIQUE
•	emp_name is NOT NULL
create table Employee_Details(emp_id int auto_increment PRIMARY KEY, email varchar(20) unique, emp_name varchar(20) not null);

