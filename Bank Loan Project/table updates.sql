use loan;
UPDATE floan
SET loan_cat = 
    CASE
        WHEN loan_status = 'Current' THEN 'Good Loan'
        WHEN loan_status = 'Fully Paid' THEN 'Good Loan'
        ELSE 'Bad Loan'
    END;
select * from floan;