-- 1.	Display all customers and their order details using LEFT JOIN.
select c.*, o.* from customers c left join orders o on c.c_id=o.c_id;

-- 2.	Show all customers including those who have not placed any orders.
select c.*, o.* from customers c left join orders o on c.c_id=o.c_id;

-- 3.	Find customers who have no orders using LEFT JOIN.
select c.* from customers c left join orders o on c.c_id=o.c_id where o.c_id is null;

-- 4.	Display customer names and order amounts, showing NULL
--                where orders are not available.
select c.c_name, o.o_amount from customers c left join orders o on c.c_id=o.c_id;

-- 5.	List all customers and their order dates, including customers without orders.
select c.c_name , o.order_date from customers c left join orders o on c.c_id=o.c_id;

-- 6.	Count the number of orders per customer, including customers with zero orders.
select c.c_name, count(o.o_id) as order_count from customers c left join orders o on c.c_id=o.c_id group by c.c_id,c.c_name;

-- 7.	Show all customers and their latest order date, including customers who never ordered.
select c.c_id, c.c_name, max(o.order_date) as latest_order_date from customers c left join orders o on c.c_id=o.c_id group by c.c_id,c.c_name;

-- 8.	Find customers who have placed more than one order using LEFT JOIN.
select c.c_id, c.c_name,count(o.o_id) as order_count from customers c left join orders o on c.c_id=o.c_id group by c.c_id,c.c_name having count(o.o_id)>1;

-- 9.	Display customer details along with order details where the order amount is greater
--              than 3000, including customers with no orders.
select c.*, o.* from customers c left join orders o on c.c_id=o.c_id and o.o_amount>3000;


