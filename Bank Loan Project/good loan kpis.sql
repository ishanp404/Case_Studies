SELECT 
    (COUNT(*) / (SELECT 
            COUNT(*)
        FROM
            floan)) * 100 AS good_loan_perc
FROM
    floan
WHERE
    loan_cat = 'Good Loan';
SELECT 
    COUNT(*) as good_loan_applications
FROM
    floan
WHERE
    loan_cat = 'Good Loan';
SELECT 
    SUM(loan_amount) AS total_good_loan_fund
FROM
    floan
WHERE
    loan_cat = 'Good Loan';
SELECT 
    SUM(total_payment) AS total_good_loan_fund
FROM
    floan
WHERE
    loan_cat = 'Good Loan';