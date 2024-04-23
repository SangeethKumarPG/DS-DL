create database emp;
use emp;
create table employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
emp_salary DECIMAL(10,2),
em_dept VARCHAR(50)
);

create table dept(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(25),
dept_loc VARCHAR(50)
);

alter table employee add email varchar(50);

alter table employee drop email;

insert into employee(emp_id,
emp_name,
emp_salary,
em_dept) values(101, 'Dan',30000.00,'IT');

insert into employee(emp_id,
emp_name,
emp_salary,
em_dept) values(102, 'Pat',75000.00,'HR');

insert into employee(emp_id,
emp_name,
emp_salary,
em_dept) values(103, 'Mary',80000.00,'IT');

select * from employee;

select * from employee where emp_salary between 30000.00 and 75000.00;

select max(emp_salary) as highest_salary from employee;

select count(em_dept) as count , em_dept from employee group by em_dept;

update employee set emp_salary = 10000.00 where emp_id=102;

-- Consider a "products" table with the following schema:

-- product_id (INT, PRIMARY KEY)
-- product_name (VARCHAR(255))
-- category (VARCHAR(50))
-- price (DECIMAL(10,2))
-- quantity_in_stock (INT)
-- Perform the following operations using SQL queries:

-- Create the "products" table.
-- Insert at least 5 records into the "products" table.
-- Retrieve all records from the "products" table.
-- Update the price of a product with a specific product_id.
-- Delete a product record with a specific product_id.
-- You can write your SQL queries to accomplish these tasks based on the provided schema.

create table product(
product_id INT PRIMARY KEY,
product_name VARCHAR(255),
category VARCHAR(50),
price DECIMAL(10,2),
quantity_in_stock INT
);

insert into product(product_id, product_name, category, price, quantity_in_stock)
values(101, "Product1", "Category1", 100.00, 3);

insert into product(product_id, product_name, category, price, quantity_in_stock)
values(102, "Product2", "Category2", 2300.00, 6);
insert into product(product_id, product_name, category, price, quantity_in_stock)
values(103, "Product3", "Category3", 150.00, 5);
insert into product(product_id, product_name, category, price, quantity_in_stock)
values(104, "Product4", "Category3", 1760.00, 2);
insert into product(product_id, product_name, category, price, quantity_in_stock)
values(105, "Product5", "Category3", 100.00, 4);

select * from product;

update product set price=50.00 where product_id = 101;

delete from product where product_id = 105;
