use sort;
CREATE TABLE country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50)
);
-- City Table
CREATE TABLE city (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- Insert into country
INSERT INTO country VALUES
(1, 'India'),
(2, 'USA'),
(3, 'Canada');
-- Insert into city
INSERT INTO city VALUES
(101, 'Mumbai', 1),
(102, 'Delhi', 1),
(103, 'New York', 2),
(104, 'Toronto', 3),
(105, 'Vancouver', 3),
(106, 'Paris', NULL);  -- Paris has no country reference

select * from country;
select * from city;

SELECT city.city_name, country.country_name
FROM city
LEFT JOIN country ON city.country_id = country.country_id;


select city.city_name,country.country_name
from city
left join country on city.country_id=country.country_id;

SELECT city.city_name, country.country_name
FROM city
INNER JOIN country ON city.country_id = country.country_id;







































































