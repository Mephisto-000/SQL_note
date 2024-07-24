-- 將欄位變更為其他名稱

select
	product_id as 商品ID,      -- 設定別名 : 商品ID
	product_name as 商品名稱   -- 設定別名 : 商品名稱
from
	product;