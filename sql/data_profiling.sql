select COUNT(*) as total_customers from customers; -- total_customers 99441


select count(distinct customer_unique_id) as unique_customers from customers; -- unique_customers 96096

select COUNT(*) as total_orders from orders; -- total_orders 99441

-- Order status distribution
select order_status, COUNT(*) as order_count from orders group by order_status order by order_count desc;

-- What percentage of orders are delivered?
select 
    (SELECT COUNT(*) FROM orders WHERE order_status = 'delivered') * 100.0 / COUNT(*) as delivered_percentage
from orders;

-- What time period does this data cover?
select strftime('%Y', order_purchase_timestamp) as year ,
        count(*) as orders
        from orders
        group by year
        order by year;

-- Orders by month
select strftime('%Y-%m', order_purchase_timestamp) as month,
        count(*) as orders
        from orders
        group by month
        order by month;
-- Do we see growth in orders over time?
-- YES we see a clear growth trend in orders over time, with a significant increase in the number of orders from 2016 to 2018. The number of orders starts at around 1000 in 2016 and grows steadily, reaching over 30000 orders by the end of 2018. This indicates a strong upward trend in customer activity and demand for products on the platform.

--First order date
select min(order_purchase_timestamp) as first_order_date from orders; 

-- last order date
select max(order_purchase_timestamp) as last_order_date from orders;

-- Can one customer have multiple orders    
select customer_id, count(*) as order_count
from orders
group by customer_id
having count(*) > 1
order by order_count desc
limit 10;

select * from orders
limit 5;

select 
    customer_id,
    count(*) as order_count
from orders
group by customer_id
having count(*) > 1;

