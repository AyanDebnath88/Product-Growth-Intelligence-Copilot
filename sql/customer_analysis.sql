--- Discovery that we need to join with customers table to get unique customer ids, as customer_id in orders is not unique to a single customer due to multiple orders by the same customer.
select c.customer_unique_id,
        count(o.order_id) as order_count
from customers c
join orders o 
on c.customer_id = o.customer_id
group by c.customer_unique_id
having count(o.order_id) > 1
order by order_count desc
limit 10;

--- How many customers come back for repeat purchases? --2997
select 
count(*) as repeat_customers
from (
    select c.customer_unique_id
    from customers c
    join orders o 
    on c.customer_id = o.customer_id
    group by c.customer_unique_id
    having count(o.order_id) > 1
) ;
-- total unique_customers 
select 
count(distinct customer_unique_id) from customers; -- 96096

