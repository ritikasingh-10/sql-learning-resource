--Round 1: Basic SQL
-- Q1) show all employees
select * from employee_sales;

--Q2) show only employess name and sales 
select emp_name, sales from employee_sales;

--Q3) show employees from mumbai.
select * from employee_sales where city='Mumbai';

--Q4) Show employees whose sales are above 50000.
select * from employee_sales where sales>50000;

--Q5) Show employees from Mumbai and sales above 40000.
select * from employee_sales where city='Mumbai' and sales>40000;

-- Round 2: Sorting
-- Q6 show highest sales first.
select * from employee_sales
order by sales DESC,profit DESC;

--Q7) Show top 5 employees by sales.
select * from employee_sales
order by sales DESC
limit 5;

--Q8) Show lowest profit first.
select * from employee_sales
order by profit ASC;

--Round 3: Aggregate Functions
-- Q9) Total company sales.
select sum(sales) from employee_sales;

--Q10) average sales 
select round(avg(sales),2) as avg_sales from employee_sales;

--Q11) highest sales
select max(sales) as highest_sales from employee_sales;

--Q12) Lowest profit.
select min(profit) as lowest_profit from employee_sales;

-- Q13) Total employees.
select count(emp_name) as emp_count from employee_sales; 

--Round 4: GROUP BY
--Q14) Total sales by city.
select city, sum(sales) as revenue from employee_sales 
group by city
order by revenue DESC;

--Q15) Total sales by department.
select department ,sum(sales) as revenue from employee_sales 
group by department;

--Q16) Average profit by city.
select city , round(avg(profit),2) as city_profit from employee_sales 
group by city;

--Q17) Total orders by department.
select department, count(orders_count) as order_count from employee_sales
group by department;

--Round 5: HAVING
-- Q18) Show cities where total sales exceed 80000.
select city ,sum(sales) as revenue  from employee_sales 
group by city 
having sum(sales) >80000;

-- Q19)Show departments with average profit above 5000.
select department, round(avg(profit),2) as over_avg from employee_sales
group by department 
having avg(profit)>5000

--Q20) Show departments having more than 2 employees.
select department ,count(emp_id) As count_employee from employee_sales
group by department 
having count(emp_id)>2;

--case when 
--Q21) create sales category 
select emp_name, sales,
case 
when sales >50000 then 'high'
when sales between 35000 and 50000 then 'medium'
when sales < 35000 then 'low' 
end as sales_category
from employee_sales;

--Q22) create profit status
SELECT emp_name,
       profit,
       CASE
           WHEN profit >= 5000 THEN 'Good'
           ELSE 'Improve'
       END AS profit_status
FROM employee_sales;

--Round 7: String Functions
--Q23) Convert names to uppercase.
select emp_name,upper(emp_name) from employee_sales;

--Q24)Convert city names to lowercase
select emp_name,city,lower(city) from employee_sales;

--Q25) Find length of employee names.
select emp_name,length(emp_name) from employee_sales;

--Create:Rahul - Mumbai
select emp_name, city, concat(emp_name,'-',city)as concat_columns from employee_sales;

--Round 8: Date Functions
--Q27)extract joining year
select joining_date,emp_name, extract(year from joining_date)as year from employee_sales;

--Q28)Extract joining month.
select joining_date,emp_name, extract(month from joining_date)as month from employee_sales;

--Q29) Count employees joined in each month.
SELECT EXTRACT(MONTH FROM joining_date) AS month,
       COUNT(emp_id) AS employee_count
FROM employee_sales
GROUP BY EXTRACT(MONTH FROM joining_date)
ORDER BY month;

--Q30) Show oldest joining date.
SELECT MIN(joining_date) AS oldest_joining_date
FROM employee_sales;








