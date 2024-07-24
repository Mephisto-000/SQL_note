-- 第一章練習問題

-- 問題 1 
select
	*
from
	member;


select
	member_id, 
	member_name
from
	member;


-- 問題 2 
-- 寫出問題 1 的 member_name、birthday、tel 欄位的 SQL
select
	member_name, 
	birthday, 
	tel
from
	member;


-- 問題 3 
-- 以 '姓名'、'聯絡方式' 這類別名從問題 1 的表格取得 member_name、tel欄位內容
select
	member_name as 姓名, 
	tel as 聯絡方式
from
	member;