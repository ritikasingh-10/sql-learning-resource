--show all data 
select * from orders;

-- show only customer name and city
select customer_name,city from orders;

--show unique cities
select distinct city from orders;

--show unique product 
select distinct category from orders;

--where clause practice
-- Q5. Show all orders from Mumbai.
select * from orders 
where city='Mumbai';

--Q6. Show all delivered orders.
select * from orders 
where order_status='Delivered';

--Q7. Show orders where total amount is greater than 10000.
select  * from orders
where total_amount>10000;

--Q8. Show all pending orders.
select * from orders 
where order_status='Pending';

--Q9. Show orders where payment mode is Card.
select * from orders
where payment_mode='Card';

--Q10. Show orders NOT from Delhi.
select * from orders 
where not city='Delhi';

/* PRACTICE SET 3: COMPARISON + LOGICAL OPERATORS 
Goal
Learn AND / OR / BETWEEN / IN.
*/

--Q11. Show Mumbai customers whose order amount is above 10000.
select * from orders
where city='Mumbai' and price>10000;

-- Q12. Show orders from Mumbai OR Delhi.
select * from orders 
where city='Mumbai' or city='Delhi';

--Q13. Show orders where total amount is between 5000 and 40000.
select * from orders 
where total_amount between 5000 and 40000;

--Q14. Show orders where city is Mumbai, Pune, or Bangalore.
select * from orders 
where city IN('Mumbai', 'Pune', 'Bangalore');

--Q15. Show customers whose names start with 'P'.
select * from orders
where customer_name like 'P%';

--Q16. Show products containing word 'top'.
select * from orders
where product_name like '%top%';

/* PRACTICE SET 4: ORDER BY + LIMIT 
Goal
Learn sorting and ranking. */

--Q17. Show highest order amount first.
select * from orders order by price DESC limit 10;

--Q18. Show lowest order amount first.
select * from orders order by price ASC;

--Q19. Show top 3 highest orders.
select * from orders order by price  DESC limit 3;

--Q20. Show latest orders first.
select * from orders
order by order_date DESC ;

/* PRACTICE SET 5: UPDATE PRACTICE 
Goal : Understand modifying existing data. */

--Q21. Update Aman's order status to Delivered.
update orders
set order_status='Delivered'
where customer_name='Aman';

select customer_name,order_status from orders 
order by customer_name ASC;

--Q22. Change payment mode of order_id 105 to UPI.
update orders 
set payment_mode='UPI'
where order_id=105;

select customer_name,payment_mode from orders
where order_id=105;

--Q23. Increase all Laptop prices by 5000.
update orders 
set price = price+5000
where product_name='Laptop';

select * from orders where product_name ='Laptop';

/* PRACTICE SET 7: ALTER TABLE PRACTICE 
Goal
Learn table structure modification.  */

--Q26. Add a new column called customer_email.
/* alter table orders
add cust_email varchar(20);

--Q27. Modify city column size to VARCHAR(100).
ALTER TABLE orders
ALTER COLUMN city TYPE VARCHAR(100);

--Q28. Drop customer_email column.
ALTER TABLE orders
DROP COLUMN cust_email; */

select * from orders;

-- PRACTICE SET 8: REAL ANALYTICAL THINKING
-- Q29. Which city generated highest sales?
select city,total_amount from orders order by total_amount DESC;

--Q30. Which product appears most frequently?
select product_name,quantity from orders order by quantity DESC;

--Q33. Find all high-value pending orders
SELECT *
FROM orders
WHERE order_status = 'Pending'
AND total_amount > 30000;

--Q34. Which customers spent above average?
SELECT customer_name,
       total_amount
FROM orders
WHERE total_amount >
(
    SELECT AVG(total_amount)
    FROM orders
);


