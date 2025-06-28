
use blinkit;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Phone', 'Electronics'),
(3, 'Desk', 'Furniture'),
(4, 'Chair', 'Furniture');

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE
);

INSERT INTO Sales VALUES
(101, 1, 2, '2024-01-01'),
(102, 2, 1, '2024-01-02'),
(103, 1, 3, '2024-01-03'),
(104, 5, 1, '2024-01-05');  

select products.product_name,Sales.sale_date
from Products
Inner join Sales on Products.product_id=Sales.product_id;






































