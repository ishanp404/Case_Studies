select time,count(*) as sales
from wmrt
group by time;
select `customer type`, sum(total)
from wmrt
group by `customer type`;
select city,sum(`tax 5%`) as tax_paid
from wmrt
group by city
order by tax_paid desc
limit 1;
select `customer type`,sum(`tax 5%`) as tax_paid
from wmrt
group by `customer type`;
order by tax_paid desc
limit 1;