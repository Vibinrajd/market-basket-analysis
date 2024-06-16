
use market_basket_analysis;

-- 1. Select all columns from order_products
   SELECT * FROM order_products;
   
-- 2. Count the total number of records in order_products
   SELECT COUNT(*) FROM order_products;
   
-- 3. Select distinct product IDs
   SELECT DISTINCT product_id FROM order_products;
   
-- 4. Select orders where the product was reordered
   SELECT * FROM order_products WHERE reordered = 1;
   
-- 5. Select top 10 orders by `order_id`
   SELECT * FROM order_products ORDER BY order_id LIMIT 10;
  
-- 6. Count the number of reorders
   SELECT COUNT(*) FROM order_products WHERE reordered = 1;
   
-- 7. Count the number of unique orders
   SELECT COUNT(DISTINCT order_id) FROM order_products;
   
-- 8. Find the average add_to_cart_order value
   SELECT AVG(add_to_cart_order) FROM order_products;
   
-- 9. Find the maximum `add_to_cart_order` value
   SELECT MAX(add_to_cart_order) FROM order_products;

-- 10. Get the top 10 most ordered products by name
    SELECT product_name, COUNT(*) AS order_count 
    FROM order_products 
    GROUP BY 1 
    ORDER BY 2 DESC 
    LIMIT 10;
    

-- 11. Find the top 10 users who placed the most orders
    SELECT user_id, COUNT(*) AS order_count 
    FROM order_products
    GROUP BY 1 
    ORDER BY 2 DESC 
    LIMIT 10;

-- 12. Find the average number of products per order
    SELECT AVG(product_count) as 'average number of products per order'
    FROM (
        SELECT order_id, COUNT(*) AS product_count 
        FROM order_products 
        GROUP BY 1
    ) AS subquery;
  

-- 13. Find the number of orders per day of the week
    SELECT order_dow, COUNT(*) AS order_count 
    FROM order_products  
    GROUP BY 1;
    
-- 14. Find the number of orders per hour of the day
    SELECT order_hour_of_day, COUNT(*) AS order_count 
    FROM order_products 
    GROUP BY 1;
    
-- 15. Find the reorder ratio for each product**
    SELECT product_id, 
           SUM(reordered) / COUNT(*) AS reorder_ratio 
    FROM order_products 
    GROUP BY product_id;


-- 16. Calculate the rank of products by the number of orders
    SELECT product_id, 
           COUNT(*) AS order_count, 
           RANK() OVER (ORDER BY COUNT(*) DESC) AS product_rank 
    FROM order_products 
    GROUP BY 1;
  


-- 17. Calculate the percentage of total orders for each product
    SELECT product_id, 
           COUNT(*) AS order_count, 
           100.0 * COUNT(*) / SUM(COUNT(*)) OVER () AS order_percentage 
    FROM order_products 
    GROUP BY 1
    order by 2 desc;


-- 18. Find the top 5 products ordered in the most recent orders
    SELECT product_id, product_name,COUNT(*) AS order_count 
    FROM order_products 
    WHERE order_id IN (
        SELECT order_id 
        FROM order_products 
        WHERE eval_set = 'train' 
        ORDER BY order_number DESC 
    ) 
    GROUP BY 1,2 
    ORDER BY 3 DESC;
     
-- 19. Find the average days since prior order for reordered products
    SELECT AVG(days_since_prior_order) 
    FROM order_products 
    WHERE order_id IN (
        SELECT order_id 
        FROM order_products 
        WHERE reordered = 1
    );
    
-- 20. Find users who have never reordered a product
    SELECT user_id 
    FROM order_products 
    WHERE user_id NOT IN (
        SELECT DISTINCT user_id 
        FROM order_products
        WHERE reordered = 1
    );
    
-- 21. Find products that were never reordered
    SELECT product_id 
    FROM order_products 
    WHERE product_id NOT IN (
        SELECT DISTINCT product_id 
        FROM order_products 
        WHERE reordered = 1
    );
    
-- 22. Find the average cart position for each product
    
    SELECT product_id, AVG(add_to_cart_order) AS avg_cart_position 
    FROM order_products 
    GROUP BY 1 
    ORDER BY 2;