-- �F�Ѿާ@�r�ꪺ��k

select
	*
from
	product
where
	product_name = '�ĥΤ�m';


-- �r��i��

select * from search where val = 'A';

select * from search where val COLLATE Latin1_General_BIN2 = 'A';

select * from product where product_name like '�ĥ�%'
