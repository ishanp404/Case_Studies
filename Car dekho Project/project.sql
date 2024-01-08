use cars;
SELECT 
    *
FROM
    car_dekho;
SELECT 
    COUNT(*) AS total_records
FROM
    car_dekho;
SELECT 
    COUNT(name) as 2023_deals
FROM
    car_dekho
WHERE
    year = 2023;
SELECT 
    year, COUNT(*) AS car_count
FROM
    car_dekho
WHERE
    year IN ('2020' , '2021', '2022')
GROUP BY year;
SELECT 
    year, COUNT(*) AS total
FROM
    car_dekho
GROUP BY year;
SELECT 
    COUNT(name) AS diesel_count
FROM
    car_dekho
WHERE
    fuel = 'diesel' AND year = '2020';
SELECT 
    COUNT(*) AS petrol_count
FROM
    car_dekho
WHERE
    fuel = 'petrol' AND year = '2020';
SELECT 
    year, fuel, COUNT(*) AS car_count
FROM
    car_dekho
WHERE
    fuel IN ('petrol' , 'diesel', 'cng')
GROUP BY year , fuel;
SELECT 
    year, COUNT(*) AS car_count
FROM
    car_dekho
GROUP BY year
HAVING car_count > 100;
SELECT 
    year, COUNT(*) AS car_count
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023
GROUP BY year;
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;