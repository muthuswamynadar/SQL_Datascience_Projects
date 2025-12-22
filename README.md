/* =========================================================
   📊 SQL DATA ANALYSIS PORTFOLIO
   Projects Included:
   1️⃣ Ola & Uber Ride Booking Analysis
   2️⃣ Pizza Sales Analysis
   3️⃣ Zepto Product Analysis

   Author: Muthuswamy
   LinkedIn: https://www.linkedin.com/in/nadarmuthuswamy/
   ========================================================= */


/* =========================================================
   🚕 OLA & UBER RIDE BOOKING ANALYSIS
   Dataset: bookings
   ========================================================= */

-- Preview data
SELECT * FROM bookings;

-- Remove unnecessary column
ALTER TABLE bookings
DROP COLUMN `Vehicle Images`;

/* -----------------------------
   🔹 BASIC DATA UNDERSTANDING
   ----------------------------- */

-- 1. Total ride records
SELECT COUNT(*) AS Total_Ride_Records
FROM bookings;

-- 2. Columns and data types
DESCRIBE bookings;

-- 3. Unique customers
SELECT COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM bookings;

-- 4. Unique drivers (Vehicle_Type as proxy)
SELECT COUNT(DISTINCT Vehicle_Type) AS Unique_Drivers
FROM bookings;

-- 5. Unique pickup & drop locations
SELECT
    COUNT(DISTINCT pickup_location) AS Unique_Pickup_Locations,
    COUNT(DISTINCT drop_location) AS Unique_Drop_Locations
FROM bookings;

/* -----------------------------
   🔹 BOOKING STATUS ANALYSIS
   ----------------------------- */

-- 6. Completed, cancelled & no-show rides
SELECT
    SUM(CASE WHEN Booking_Status = 'Success' THEN 1 ELSE 0 END) AS Completed_Rides,
    SUM(CASE WHEN Booking_Status = 'Canceled by Driver' THEN 1 ELSE 0 END) AS Cancelled_By_Driver,
    SUM(CASE WHEN Booking_Status = 'Canceled by Customer' THEN 1 ELSE 0 END) AS Cancelled_By_Customer,
    SUM(CASE WHEN Booking_Status = 'Driver Not Found' THEN 1 ELSE 0 END) AS No_Show_Rides
FROM bookings;

-- 7. Percentage of completed rides
SELECT 
    ROUND(
        100 * SUM(CASE WHEN Booking_Status = 'Success' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS Completed_Ride_Percentage
FROM bookings;

-- 8. Percentage of cancelled rides
SELECT 
    ROUND(
        100 *
        (
            SUM(CASE WHEN Booking_Status = 'Canceled by Driver' THEN 1 ELSE 0 END) +
            SUM(CASE WHEN Booking_Status = 'Canceled by Customer' THEN 1 ELSE 0 END)
        ) / COUNT(*),
        2
    ) AS Cancelled_Ride_Percentage
FROM bookings;

-- 9. Customer vs Driver cancellations
SELECT 
    SUM(CASE WHEN Booking_Status = 'Canceled by Driver' THEN 1 ELSE 0 END) AS Cancelled_By_Driver,
    SUM(CASE WHEN Booking_Status = 'Canceled by Customer' THEN 1 ELSE 0 END) AS Cancelled_By_Customer
FROM bookings;

-- 10. Most common cancellation reasons
SELECT
    CancellationReason,
    COUNT(*) AS Total_Count
FROM (
    SELECT Canceled_Rides_by_Customer AS CancellationReason
    FROM bookings
    WHERE Canceled_Rides_by_Customer IS NOT NULL

    UNION ALL

    SELECT Canceled_Rides_by_Driver
    FROM bookings
    WHERE Canceled_Rides_by_Driver IS NOT NULL
) t
GROUP BY CancellationReason
ORDER BY Total_Count DESC;



/* =========================================================
   🍕 PIZZA SALES ANALYSIS
   Tables assumed:
   orders, order_details, pizzas, pizza_types
   ========================================================= */

-- 1. Total number of orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- 2. Total revenue
SELECT 
    ROUND(SUM(od.quantity * p.price), 2) AS Total_Revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id;

-- 3. Highest priced pizza
SELECT 
    pt.name, p.price
FROM pizzas p
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;

-- 4. Most common pizza size
SELECT 
    p.size, COUNT(*) AS Order_Count
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY Order_Count DESC
LIMIT 1;

-- 5. Top 5 most ordered pizzas
SELECT 
    pt.name, SUM(od.quantity) AS Total_Quantity
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY Total_Quantity DESC
LIMIT 5;

-- 6. Hour-wise order distribution
SELECT 
    HOUR(o.order_time) AS Order_Hour,
    COUNT(*) AS Total_Orders
FROM orders o
GROUP BY Order_Hour
ORDER BY Order_Hour;

-- 7. Quantity sold per category
SELECT 
    pt.category, SUM(od.quantity) AS Total_Quantity
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category;

-- 8. Top 3 pizzas by revenue
SELECT 
    pt.name,
    ROUND(SUM(od.quantity * p.price), 2) AS Revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY Revenue DESC
LIMIT 3;



/* =========================================================
   🛒 ZEPTO PRODUCT ANALYSIS
   Table assumed: products
   ========================================================= */

-- 1. Top 10 best-value products by discount %
SELECT 
    product_name,
    ROUND((mrp - selling_price) / mrp * 100, 2) AS Discount_Percentage
FROM products
ORDER BY Discount_Percentage DESC
LIMIT 10;

-- 2. High MRP products that are out of stock
SELECT 
    product_name, mrp
FROM products
WHERE mrp > 500 AND stock = 0;

-- 3. Estimated revenue per category
SELECT 
    category,
    ROUND(SUM(selling_price * stock), 2) AS Estimated_Revenue
FROM products
GROUP BY category;

-- 4. MRP > ₹500 and discount < 10%
SELECT 
    product_name, mrp, selling_price
FROM products
WHERE mrp > 500
AND ((mrp - selling_price) / mrp * 100) < 10;

-- 5. Top 5 categories by average discount
SELECT 
    category,
    ROUND(AVG((mrp - selling_price) / mrp * 100), 2) AS Avg_Discount
FROM products
GROUP BY category
ORDER BY Avg_Discount DESC
LIMIT 5;

-- 6. Best price per gram (products > 100g)
SELECT 
    product_name,
    ROUND(selling_price / weight_in_grams, 4) AS Price_Per_Gram
FROM products
WHERE weight_in_grams > 100
ORDER BY Price_Per_Gram;

-- 7. Product segmentation by weight
SELECT 
    product_name,
    CASE 
        WHEN weight_in_grams < 250 THEN 'Low'
        WHEN weight_in_grams BETWEEN 250 AND 1000 THEN 'Medium'
        ELSE 'Bulk'
    END AS Weight_Category
FROM products;

-- 8. Total inventory weight per category
SELECT 
    category,
    SUM(weight_in_grams * stock) AS Total_Inventory_Weight
FROM products
GROUP BY category;


/* ===================== END OF FILE ===================== */
