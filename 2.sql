-- INNER JOIN Questions
-- 1.	Display employee name and their department name using INNER JOIN.
select e.e_name,d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id;

-- 2.	Display all employee details along with department name for employees who belong to a department.
select e.*, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id;

-- 3.	Find employees working in the IT department using INNER JOIN.
select e.e_name, d.dept_name from employees e  inner join departments d on e.dept_id=d.dept_id where d.dept_name='IT';

-- 4.	Count the number of employees in each department.
select count(*), d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id group by d.dept_name;

-- 5.	Display employees whose salary is greater than 40,000 along with their department name.
select e.emp_name, e.salary,d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id where e.salary>40000;

-- 6.	Display employees who joined after 2020 along with department name.  date_join > ‘2020-01-01’
select e.e_name, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id where e.date_join>'2020-01-01';

-- 7.	Find the maximum salary in each department.
select max(e.salary), d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id group by d.dept_name;

-- 8.	Retrieve employees whose department name starts with 'H'.
select e.emp_name, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id where d.dept_name like 'H%';

-- 9.	List all employees whose department ID matches in both tables.
select e.* from employees e inner join departments d on e.dept_id=d.dept_id;

-- 10.	Display employee names, salaries, and department names sorted by department name  
select e.emp_name, e.salary, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id order by  d.dept_name;
