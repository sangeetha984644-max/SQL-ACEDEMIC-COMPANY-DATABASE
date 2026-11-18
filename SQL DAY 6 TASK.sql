-- Practice Questions
use route_mart;
-- 1. Display all records from the orders table.
select * from orders;
-- 2. Display only product name, brand and price from the products table.
select product_name,brand,price from products;
-- 3. Display only customer name, city and amount from the orders table.
select customer_name,city,amount from orders;
-- 4. Display product name, category and stock from the products table.
select product_name,category,stock from products;
-- 2. Filtering records – WHERE
-- Purpose: Display only records that satisfy a given condition.
-- Solved example
-- Display products that belong to the Electronics category.
-- SELECT *
-- FROM products
-- WHERE category = 'Electronics';
-- Practice Questions
-- 1. Display products that belong to the Grocery category.
select product_name,category from products where category='grocery';
-- 2. Find products manufactured by Logitech.
select product_name,brand from products where brand='logitech';
-- 3. Display products with a price greater than ■2,000.
select product_name,price from products where price>2000;
-- 4. Find products with stock less than 100.
select product_name,stock from products where stock<100;
-- 5. Display orders placed by customers from Kochi.
select customer_name,city from orders where city='kochi';
-- 6. Find orders where the payment mode is UPI.
select * from orders where payment_mode='UPI';
-- 7. Display orders with the status Cancelled.
select * from orders where status='cancelled';
-- 8. Find orders placed after 1st March 2025.
select * from orders where order_date>'2025-03-01';
-- 9. Display products with a rating greater than 4.2.
select * from products where rating>4.2;
-- 10. Find orders where the quantity is greater than 2.
select * from orders where quantity>2;
-- 11. Display products with a price between ■500 and ■2,500.
select *from products where price between 500 and 2500;
-- 12. Find orders placed in January 2025.
select * from orders where order_date between '2025-01-01'and'2025-01-31';
-- 13. Display orders that are neither Cancelled nor Returned.
select * from orders where not status in('cancelled','returned');

-- 3. Sorting records – ORDER BY
-- Purpose: Arrange records in ascending or descending order.
-- Solved example
-- Display products from the lowest price to the highest price.
-- SELECT *
-- FROM products
-- ORDER BY price ASC;
-- Practice Questions
-- 1. Display products from highest price to lowest price.
select price from products order by price desc;
-- 2. Arrange products alphabetically by product name.
select product_name from products order by product_name;
-- 3. Display orders from the oldest to the newest.
select * from orders  order by order_date;
-- 4. Arrange orders based on amount, highest first.
select * from orders  order by amount desc;
-- 5. Display products based on rating, highest first.
select * from products  order by rating desc;
-- 6. Arrange customers alphabetically by name.
select customer_name from orders order by customer_name;
-- 7. Display products based on stock, lowest first.
select * from products order by stock;
-- 4. Limiting records – LIMIT
-- Purpose: Display only a specific number of records.
-- Solved example
-- Display the 5 most expensive products.
-- SELECT *
-- FROM products
-- ORDER BY price DESC
-- LIMIT 5;
-- Practice Questions
-- 1. Display the 3 cheapest products.
select product_name,rating from products order by rating limit 3;  
-- 2. Display the 5 products with the highest stock.
select product_name,stock from products order by stock desc limit 5;
-- 3. Display the latest 5 orders.
select 
-- 4. Display the 3 orders with the highest amount.
-- 5. Display any 5 records from the orders table.
-- 6. Find the 3 products with the lowest ratings.
-- 5. Grouping records – GROUP BY
-- Purpose: Group similar records and perform calculations using COUNT(), SUM(), AVG(), MAX() and MIN().
-- Solved example
-- Find the number of products available in each category.
-- SELECT category, COUNT(*) AS total_products
-- FROM products
-- GROUP BY category;
-- Practice Questions
-- 1. Find the number of products available under each brand.
-- 2. Find the average price of products in each category.

-- 3. Calculate the total stock available under each category.
-- 4. Find the highest-priced product in each category.
-- 5. Count the number of orders placed from each city.
-- 6. Find the total order amount for each payment mode.
-- 7. Count the number of orders under each status.
-- 8. Find the total quantity ordered in each category.
-- 9. Find the total amount spent by each customer.
-- 10. Find the average order amount for each city.
-- 11. Count the number of products launched in each year.
-- 12. Find the total quantity ordered by each customer.
-- 6. Filtering grouped results – HAVING
-- Purpose: Display only groups that satisfy a condition after grouping.
-- Solved example
-- Find cities that have received more than 5 orders.
-- SELECT city, COUNT(*) AS total_orders
-- FROM orders
-- GROUP BY city
-- HAVING COUNT(*) > 5;
-- Practice Questions
-- 1. Find categories having more than 3 products.
-- 2. Find brands having more than 1 product.
-- 3. Display cities having more than 3 orders.
-- 4. Find payment modes where the total order amount is greater than ■5,000.
-- 5. Display categories where the average product rating is greater than 4.2.
-- 6. Find customers who have placed more than 2 orders.
-- 7. Display cities where the total order amount is greater than ■5,000.
-- 8. Find categories where the total stock is greater than 200.
-- 9. Display customers whose total ordered quantity is greater than 5.
-- 7. Combining WHERE, GROUP BY and HAVING
-- Purpose: First filter individual records, then group the filtered records, and finally filter the groups.
-- Solved example
-- Find cities having more than 2 Delivered orders.
-- SELECT city, COUNT(*) AS total_orders
-- FROM orders
-- WHERE status = 'Delivered'
-- GROUP BY city
-- HAVING COUNT(*) > 2;
-- WHERE – Consider only Delivered orders.
-- GROUP BY – Group the orders city-wise.
-- HAVING – Display cities with more than 2 orders.

-- Practice Questions
-- 1. Find the number of orders placed by each city using only UPI payments.
-- 2. Display cities having more than 2 UPI orders.
-- 3. Find the total order amount for each city, considering only Delivered orders.
-- 4. Display cities where the total amount of Delivered orders is greater than ■3,000.
-- 5. Find the total quantity ordered in each category, considering only Delivered orders.
-- 6. Display categories where the total Delivered quantity is greater than 5.
-- 7. Find the number of orders placed by each customer after 1st March 2025.
-- 8. Display customers who have placed more than 1 order after 1st March 2025.
-- 9. Find the average order amount for each payment mode, considering only Delivered orders.
-- 10. Display payment modes where the average amount of Delivered orders is greater than ■1,000.
-- 11. Find the total quantity ordered by each customer from Kochi.
-- 12. Display customers from Kochi whose total ordered quantity is greater than 3.
-- 13. Find the number of orders for each city, excluding Cancelled orders.
-- 14. Display cities having more than 3 orders, excluding Cancelled orders.
-- 15. Find the total order amount for each category, considering only orders placed during January and February 2025.
-- 8. Mixed Practice – Identify the required clauses
-- Purpose: No hints are given. Read each requirement and decide which SQL clauses are needed.
-- 1. Find the 3 most expensive Electronics products.
-- 2. Display the 5 latest orders placed by customers from Kochi.
-- 3. Find the total quantity ordered by each customer and arrange the results from highest to lowest.
select customer_name,sum(quantity) from orders group by customer_name order by sum(quantity)desc;
-- 4. Display categories having an average product price greater than ■1,000.
-- 5. Find the top 3 cities based on the number of orders.
select city,count(order_id) from orders group by city order by count(order_id)desc limit 3;
-- 6. Display the 3 brands having the highest average product rating.
-- 7. Find the total order amount for each city, but display only cities with an amount above ■5,000.
-- 8. Find the 5 customers who have spent the highest total amount.
-- 9. Display the number of Delivered orders for each city.
-- 10. Find the categories with more than 2 Delivered orders.
-- 11. Display the 3 products with the lowest ratings.
-- 12. Find customers whose total ordered quantity is greater than 5.
-- 13. Display the monthly total order amount, arranged from highest to lowest.
-- 14. Find the city with the highest number of Cancelled orders.
-- 15. Display the top 3 categories based on total quantity ordered.
-- 16. Find the top 3 customers based on their total spending on UPI orders.
-- 17. Display cities having more than 2 orders with an amount greater than ■1,000.
-- 18. Find categories with an average order amount greater than ■2,000, considering only Delivered orders.
-- 19. Display the 3 customers with the highest total spending, excluding Cancelled orders.
-- 20. Find payment modes having more than 2 orders placed in January 2025.-- 