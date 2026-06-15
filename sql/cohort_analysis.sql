-- Customers who have made their first purchase in the last 30 days
select
 c.customer_unique_id, 
 min(strftime('%Y-%m-%d', o.order_purchase_timestamp)) as cohort_month
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_unique_id

-- Cohort analysis: January Customers , how many came back in February