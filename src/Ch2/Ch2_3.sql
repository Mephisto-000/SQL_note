-- 了解操作字串的方法

select
	*
from
	product
where
	product_name = '藥用手皂';


-- 字串進階

select * from search where val = 'A';

select * from search where val COLLATE Latin1_General_BIN2 = 'A';

select * from product where product_name like '藥用%'
