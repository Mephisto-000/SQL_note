-- �Ĥ@���m�߰��D

-- ���D 1 
select
	*
from
	member;


select
	member_id, 
	member_name
from
	member;


-- ���D 2 
-- �g�X���D 1 �� member_name�Bbirthday�Btel ��쪺 SQL
select
	member_name, 
	birthday, 
	tel
from
	member;


-- ���D 3 
-- �H '�m�W'�B'�p���覡' �o���O�W�q���D 1 �������o member_name�Btel��줺�e
select
	member_name as �m�W, 
	tel as �p���覡
from
	member;