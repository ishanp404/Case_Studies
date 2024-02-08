select count(*) as total_applications from floan;
select sum(loan_amount) as total_fund from floan;
select sum(total_payment) as received_amount from floan;
select round(avg(int_rate),2) as avg_int_rate from floan;
select round(avg(dti),2) as avg_dti from floan;