SELECT 
    COUNT(DISTINCT `Product line`)
FROM
    wmrt;
SELECT 
    Payment, COUNT(*) AS times
FROM
    wmrt
GROUP BY Payment
ORDER BY times DESC
LIMIT 1;
SELECT 
    `Product line`, COUNT(*) AS times
FROM
    wmrt
GROUP BY `Product line`
ORDER BY times DESC
LIMIT 1;
SELECT 
    SUM(`gross income`), MONTH(date) AS mnth
FROM
    wmrt
GROUP BY mnth
ORDER BY mnth;
SELECT 
    MONTH(date) AS mnth, SUM(cogs) AS max_cogs
FROM
    wmrt
GROUP BY mnth
ORDER BY max_cogs DESC
LIMIT 1;
SELECT 
    `Product line`, SUM(total) AS Highest_Revenue
FROM
    wmrt
GROUP BY `Product line`
ORDER BY Highest_Revenue
LIMIT 1;
SELECT 
    City, SUM(total) AS Highest_Revenue
FROM
    wmrt
GROUP BY City
ORDER BY Highest_Revenue
LIMIT 1;
SELECT 
    `Product line`, SUM(`tax 5%`) AS Highest_VAT
FROM
    wmrt
GROUP BY `Product line`
ORDER BY Highest_VAT
LIMIT 1;
SELECT 
    `Product Line` as Product_Line,
    sum(Total) as sales,
    (case when sum(Total)>(select avg(total) from wmrt) then "Good" else "Bad" end) as Performance
FROM
    wmrt
Group BY
	`Product Line`
;
SELECT
    `Branch`,
    SUM(`Quantity`) as total_quantity_sold
FROM wmrt
GROUP BY `Branch`
HAVING total_quantity_sold > (SELECT AVG(`Quantity`) FROM wmrt);
SELECT
    `Product Line`,
    AVG(`Rating`) as average_rating
FROM wmrt
GROUP BY `Product Line`;

