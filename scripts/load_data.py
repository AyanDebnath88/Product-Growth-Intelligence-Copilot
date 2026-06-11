import pandas as pd
import sqlite3

conn = sqlite3.connect('data\database\olist.db')

customer = pd.read_csv('data/olist_customers_dataset.csv')
customer.to_sql('customers', conn, if_exists='replace', index=False)
orders = pd.read_csv('data/olist_orders_dataset.csv')
orders.to_sql('orders', conn, if_exists='replace', index=False)
orders_items = pd.read_csv('data/olist_order_items_dataset.csv')
orders_items.to_sql('order_items', conn, if_exists='replace', index=False)
payments = pd.read_csv('data/olist_order_payments_dataset.csv')
payments.to_sql('payments', conn, if_exists='replace', index=False)
reviews = pd.read_csv('data/olist_order_reviews_dataset.csv')
reviews.to_sql('reviews', conn, if_exists='replace', index=False)
products = pd.read_csv('data/olist_products_dataset.csv')
products.to_sql('products', conn, if_exists='replace', index=False)
sellers = pd.read_csv('data/olist_sellers_dataset.csv')
sellers.to_sql('sellers', conn, if_exists='replace', index=False)
print('Data loaded successfully!')