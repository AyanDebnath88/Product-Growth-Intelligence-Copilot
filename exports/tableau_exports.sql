  -- tableau_fact_orders.csv 

select 
    o.order_id,
    c.customer_unique_id,
    c.customer_state,
    DATE(o.order_purchase_timestamp) AS order_date ,
    strftime('%Y-%m',o.order_purchase_timestamp) AS order_month, 
    oi.price,
    oi.freight_value,
    p.product_category_name 

    FROM orders o  
    join customers c  
        on o.customer_id = c.customer_id
    join order_items oi   
        on o.order_id = oi.order_id 
    join products p   
        on oi.product_id = p.product_id 


-- tableau_funnel.csv
select 
    m.mql_id,
    m.origin,
    m.first_contact_date,
    cd.won_date,
    cd.business_segment,
    cd.lead_type ,
    case 
        when cd.mql_id is NOT NULL then 1
        else 0 
    end as converted 
from marketing_qual m
left join closed_deals cd 
    on m.mql_id = cd.mql_id ;

-- tableau_payments.csv 
select 
  o.order_id,
  strftime('%Y-%m',o.order_purchase_timestamp) as order_month, 
  p.payment_type,
  p.payment_installments,
  p.payment_value
from orders o  
join payments p   
on o.order_id = p.order_id;





      
    