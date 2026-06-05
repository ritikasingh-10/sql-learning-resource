CREATE TABLE employee_sales (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    joining_date DATE,
    sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    orders_count INT
);

INSERT INTO employee_sales
VALUES
(101,'Rahul','Electronics','Mumbai','2023-01-15',45000,5000,25),
(102,'Priya','Furniture','Delhi','2023-02-20',38000,4200,18),
(103,'Aman','Electronics','Mumbai','2023-03-10',52000,6100,30),
(104,'Neha','Clothing','Pune','2023-04-12',28000,2500,15),
(105,'Vikas','Furniture','Delhi','2023-05-08',41000,4500,22),
(106,'Sneha','Clothing','Mumbai','2023-06-01',35000,3300,20),
(107,'Karan','Electronics','Bangalore','2023-07-11',62000,8000,35),
(108,'Pooja','Furniture','Pune','2023-08-15',30000,2800,17),
(109,'Arjun','Electronics','Delhi','2023-09-09',55000,7000,28),
(110,'Riya','Clothing','Mumbai','2023-10-03',32000,2900,16),
(111,'Mohit','Furniture','Bangalore','2023-11-20',46000,5100,24),
(112,'Anjali','Electronics','Pune','2023-12-18',58000,7500,32);

select * from employee_sales;