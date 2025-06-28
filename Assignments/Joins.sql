use sys;
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

select P.product_id, P.product_name
from Products as P
Inner join Sales as S
on P.product_id=S.product_id;


select P.product_id,P.product_name
from Products as P
Inner join Sales as S
on  P.product_id = S.product_id ;

SELECT P.product_id, P.product_name
FROM Products AS P
INNER JOIN Sales AS S
ON P.product_id = S.product_id;


select * 
from Products as C
Right join Sales as S
on C.product_id=S.product_id;
























































































































