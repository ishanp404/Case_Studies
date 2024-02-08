select month(issue_date) as mnth, count(*) as applications, sum(loan_amount) as total_fund, sum(total_payment) as total_received
from floan
group by mnth
order by mnth;
select address_state, count(*) as applications, sum(loan_amount) as total_fund, sum(total_payment) as total_received
from floan
group by address_state
order by address_state;
select term, count(*) as applications, sum(loan_amount) as total_fund, sum(total_payment) as total_received
from floan
group by term
order by term;
select emp_length, count(*) as applications, sum(loan_amount) as total_fund, sum(total_payment) as total_received
from floan
group by emp_length
order by emp_length;
select purpose, count(*) as applications, sum(loan_amount) as total_fund, sum(total_payment) as total_received
from floan
group by purpose
order by purpose;
select home_ownership, count(*) as applications, sum(loan_amount) as total_fund, sum(total_payment) as total_received
from floan
group by home_ownership
order by applications desc;