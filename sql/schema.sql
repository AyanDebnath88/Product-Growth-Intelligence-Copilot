select name from sqlite_master
where type='table';

pragma table_info('customers');

pragma table_info('orders');

pragma table_info('orders_items');

pragma table_info('payments');

pragma table_info('reviews');

pragma table_info('products');

pragma table_info('sellers');

pragma table_info('product_category_name_translation');

pragma table_info('revimarketing_qual');

pragma table_info('closed_deals');