SELECT 
    (COUNT(*) / (SELECT 
            COUNT(*)
        FROM
            floan)) * 100 AS bad_loan_perc
FROM
    floan
WHERE
    loan_cat = 'Bad Loan';
SELECT 
    COUNT(*) as bad_loan_applications
FROM
    floan
WHERE
    loan_cat = 'Bad Loan';
SELECT 
    SUM(loan_amount) AS total_fund_bad_loan
FROM
    floan
WHERE
    loan_cat = 'Bad Loan';
SELECT 
    SUM(total_payment) AS total_received
FROM
    floan
WHERE
    loan_cat = 'Bad Loan';