# 🍕 Pizza Sales & Zepto Product SQL Analysis

![Pizza Data Analysis](https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3ZmhiaXlicjY2OXQ2aGlzZzBpbjE4a2V6M3gycGNoeWVkM3N3OXZnbCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/GFKZLvfBiyrN6/giphy.gif)

## 📚 Project Summary

1. **Pizza Sales Analysis** — explores order and revenue trends for a pizza shop (basic → advanced SQL metrics).  
2. **Zepto Product Analysis** — retail product inventory & pricing insights based on Zepto-style dataset (MRP, discounts, stock, weight, category).

---
## 🍕 Pizza Sales Analysis — Short Description
Analyze pizza shop sales data to understand customer behaviour, revenue drivers, and operational patterns.  
The analysis progresses from simple KPIs (total orders, revenue, top pizzas) to time-series and contribution analysis  
(cumulative revenue, percentage revenue contribution, top items per category).  
Useful for menu optimization, promotions, and daily staffing decisions.

### 🔹 Key Objectives
#### 🧩 Basic
- Retrieve total number of orders  
- Calculate total revenue from pizza sales  
- Identify highest-priced pizza  
- Find most common pizza size  
- List top 5 most ordered pizzas  

#### ⚙️ Intermediate
- Total quantity ordered per pizza category  
- Order distribution by hour of the day  
- Category-wise pizza distribution  
- Average pizzas sold per day  
- Top 3 pizzas by revenue  

#### 🚀 Advanced
- Percentage contribution of each pizza to total revenue  
- Cumulative revenue over time  
- Top 3 pizzas by revenue within each category  
---
## 🛒 Zepto Product Analysis 
Analyze a grocery/e-commerce product catalogue to identify pricing/value patterns, inventory issues, and category-level metrics.  
Ideal for **pricing strategy**, **inventory management**, and **category merchandising**.

### 🔹 Key Questions
```sql
-- Q1. Find the top 10 best-value products based on the discount percentage.
-- Q2. What are the Products with High MRP but Out of Stock
-- Q3. Calculate Estimated Revenue for each category
-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
-- Q5. Identify the top 5 categories offering the highest average discount percentage.
-- Q6. Find the price per gram for products above 100g and sort by best value.
-- Q7. Group the products into categories like Low, Medium, Bulk (based on weight or quantity).
-- Q8. What is the Total Inventory Weight Per Category
