-- 1. Get all customers and their addresses.
SELECT * FROM customers
	LEFT OUTER JOIN addresses
	ON customers.id = addresses.customer_id;

-- 2. Get all orders and their line items.
SELECT * FROM orders
	LEFT OUTER JOIN line_items
	ON orders.id = line_items.order_id;

-- 3. Which warehouses have cheetos?
SELECT warehouse AS warehouses_with_cheetos FROM warehouse
	JOIN warehouse_product 
	ON warehouse.id = warehouse_product.warehouse_id
	JOIN products
	ON products.id = warehouse_product.product_id
	WHERE products.description = 'cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT warehouse AS warehouses_with_diet_pepsi FROM warehouse
	JOIN warehouse_product
	ON warehouse.id = warehouse_product.warehouse_id
	JOIN products
	ON products.id = warehouse_product.product_id
	WHERE products.description = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are --not included in results.

--still need to count ammount of orders.
SELECT customers.first_name, customers.last_name, COUNT(orders.id) AS order_total FROM orders
	JOIN addresses
	ON orders.address_id = addresses.id
	JOIN customers
	ON customers.id = addresses.customer_id
	GROUP BY customers.first_name, customers.last_name;

-- 6. How many customers do we have?
SELECT COUNT(*) FROM customers;

-- 7. How many products do we carry?
SELECT COUNT(*) FROM products;

-- 8. What is the total available on-hand quantity of diet pepsi?

SELECT SUM(warehouse_product.on_hand) FROM warehouse_product
	JOIN products
	ON products.id = warehouse_product.product_id
	WHERE products.description = 'diet pepsi';


