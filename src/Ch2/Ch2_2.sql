-- NULL ���ˬd

select
	customer_id
from
	customer
where
	customer_name is NULL;


select
	customer_id
from
	customer
where
	customer_name is not NULL;