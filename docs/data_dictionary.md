TABLE                                                               DESCRIPTION
customers                                                           Customer Demographics

orders                                                              Order Lifecycle
order_items                                                         Product_Sales
products                                                            product Catalog
sellers                                                             merchant Information
payments                                                            Revenue details 
reviews                                                             Customer Satisfaction
marketing_qual                                                      Funnel Acquisition
closed_deals                                                        Lead Conversion 



 

                    
cid	name	type	notnull	dflt_value	pk
0	order_id	TEXT	0	NULL	0
1	customer_id	TEXT	0	NULL	0
2	order_status	TEXT	0	NULL	0
3	order_purchase_timestamp	TEXT	0	NULL	0
4	order_approved_at	TEXT	0	NULL	0
5	order_delivered_carrier_date	TEXT	0	NULL	0
6	order_delivered_customer_date	TEXT	0	NULL	0
7	order_estimated_delivery_date	TEXT	0	NULL	0
                    
                    
                    
cid	name	type	notnull	dflt_value	pk
0	order_id	TEXT	0	NULL	0
1	payment_sequential	INTEGER	0	NULL	0
2	payment_type	TEXT	0	NULL	0
3	payment_installments	INTEGER	0	NULL	0
4	payment_value	REAL	0	NULL	0
                    
cid	name	type	notnull	dflt_value	pk
0	review_id	TEXT	0	NULL	0
1	order_id	TEXT	0	NULL	0
2	review_score	INTEGER	0	NULL	0
3	review_comment_title	TEXT	0	NULL	0
4	review_comment_message	TEXT	0	NULL	0
5	review_creation_date	TEXT	0	NULL	0
6	review_answer_timestamp	TEXT	0	NULL	0
                    
cid	name	type	notnull	dflt_value	pk
0	product_id	TEXT	0	NULL	0
1	product_category_name	TEXT	0	NULL	0
2	product_name_lenght	REAL	0	NULL	0
3	product_description_lenght	REAL	0	NULL	0
4	product_photos_qty	REAL	0	NULL	0
5	product_weight_g	REAL	0	NULL	0
6	product_length_cm	REAL	0	NULL	0
7	product_height_cm	REAL	0	NULL	0
8	product_width_cm	REAL	0	NULL	0
                    
cid	name	type	notnull	dflt_value	pk
0	seller_id	TEXT	0	NULL	0
1	seller_zip_code_prefix	INTEGER	0	NULL	0
2	seller_city	TEXT	0	NULL	0
3	seller_state	TEXT	0	NULL	0
                    
cid	name	type	notnull	dflt_value	pk
0	product_category_name	TEXT	0	NULL	0
1	product_category_name_english	TEXT	0	NULL	0
                    
                    
                    
cid	name	type	notnull	dflt_value	pk
0	mql_id	TEXT	0	NULL	0
1	seller_id	TEXT	0	NULL	0
2	sdr_id	TEXT	0	NULL	0
3	sr_id	TEXT	0	NULL	0
4	won_date	TEXT	0	NULL	0
5	business_segment	TEXT	0	NULL	0
6	lead_type	TEXT	0	NULL	0
7	lead_behaviour_profile	TEXT	0	NULL	0
8	has_company	INTEGER	0	NULL	0
9	has_gtin	INTEGER	0	NULL	0
10	average_stock	TEXT	0	NULL	0
11	business_type	TEXT	0	NULL	0
12	declared_product_catalog_size	REAL	0	NULL	0
13	declared_monthly_revenue	REAL	0	NULL	0


				
customers					
orders					
order_items					
payments					
reviews					
products					
sellers					
product_category_name_translation					
marketing_qual					
closed_deals					
                   
