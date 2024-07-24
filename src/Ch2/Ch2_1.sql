-- 只取得 O O 的紀錄

select
	customer_name		-- 想取得的欄資訊
from					
	customer			-- 從哪個表格取
where
	membertype_id = 2;	-- 以什麼樣的條件(比較運算子)取得資訊


select
	*
from
	product
where
	price < 200;