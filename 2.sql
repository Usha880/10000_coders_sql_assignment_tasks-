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
select e.e_name, e.salary,d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id where e.salary>40000;

-- 6.	Display employees who joined after 2020 along with department name.  date_join > ‘2020-01-01’
select e.e_name, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id where e.date_join>'2020-01-01';

-- 7.	Find the maximum salary in each department.
select max(e.salary), d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id group by d.dept_name;

-- 8.	Retrieve employees whose department name starts with 'H'.
select e.e_name, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id where d.dept_name like 'H%';

-- 9.	List all employees whose department ID matches in both tables.
select e.* from employees e inner join departments d on e.dept_id=d.dept_id;

-- 10.	Display employee names, salaries, and department names sorted by department name  
select e.e_name, e.salary, d.dept_name from employees e inner join departments d on e.dept_id=d.dept_id order by  d.dept_name;

-- RIGHT JOIN Questions (Course–Student)
-- 1.	Display all courses and their students using RIGHT JOIN.
select c.*, s.s_name from students s right join courses c on c.std_id=s.std_id;

-- 2.	Display all courses even if no students are enrolled.
select c.*, s.s_name from students s right join courses c on c.std_id=s.std_id;

-- 3.	Find courses that do not have any students using RIGHT JOIN.
select c.* from students s right join courses c on c.std_id=s.std_id where s.std_id is null;

-- 4.	Display course names and student names, showing NULL where 
--               students are not available.
select c.c_name, s.s_name from students s right join courses c on c.std_id=s.std_id;

-- 5.	Count the number of students in each course using RIGHT JOIN.
select c.c_name, count(s.std_id) as student_count from students s right join courses c on c.std_id=s.std_id group by c.c_name;

-- 6.	Display course names and latest student join date for each course.
select c.c_name, max(s.join_date) as latest_join from students s right join courses c on c.std_id=s.std_id group by c.c_name;

-- 7.	List all courses with the total number of students enrolled.
select c.c_name, count(s.std_id) as total_students from students s right join courses c on c.std_id=s.std_id group by c.c_name;

-- 8.	Display course details along with student details where course IDs match.
select c.*, s.* from students s right join courses c on c.std_id=s.std_id;

-- 9.	Find courses where students joined after 2024-01-01 using RIGHT JOIN.
select c.c_name, s.s_name, s.join_date from students s right join courses c on c.std_id=s.std_id where s.join_date>'2024-01-01';

-- 10.	Display all course names and student names ordered by course name using right join
select c.c_name, s.s_name from students s right join courses c on c.std_id=s.std_id order by c.c_name;
