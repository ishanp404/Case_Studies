SELECT 
    COUNT(DISTINCT `customer type`) AS customer_types
FROM
    wmrt;
SELECT 
    COUNT(DISTINCT payment) AS payment_types
FROM
    wmrt;
SELECT 
    `customer type`, COUNT(*) AS cnt
FROM
    wmrt
GROUP BY `customer type`;
SELECT 
    gender, COUNT(*) AS cnt
FROM
    wmrt
GROUP BY gender;
SELECT 
    branch,
    SUM(CASE
        WHEN gender = 'Male' THEN 1
        ELSE 0
    END) AS male_count,
    SUM(CASE
        WHEN gender = 'Female' THEN 1
        ELSE 0
    END) AS female_count
FROM
    wmrt
GROUP BY branch
ORDER BY branch;
SELECT 
    time, COUNT(*) AS cnt
FROM
    wmrt
GROUP BY time
ORDER BY cnt DESC;
SELECT 
    branch, time, COUNT(*) AS cnt
FROM
    wmrt
GROUP BY branch , time
ORDER BY cnt DESC;
SELECT 
    WEEKDAY(date) AS wday, AVG(rating) AS avg_rating
FROM
    wmrt
GROUP BY wday
ORDER BY avg_rating DESC
LIMIT 1;
SELECT 
    branch, wday, MAX(avg_rating) AS max_avg_rating
FROM
    (SELECT 
        branch, WEEKDAY(date) AS wday, AVG(rating) AS avg_rating
    FROM
        wmrt
    GROUP BY branch , wday) AS tbl
GROUP BY branch , wday
ORDER BY max_avg_rating DESC;
