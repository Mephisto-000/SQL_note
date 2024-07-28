-- SELECT 子句基礎

-- 算術運算子練習
---- 計算員工薪水淨額 : 薪水 - 扣稅
SELECT 身份證字號, 姓名, 
	   薪水 - 扣稅 AS 薪水淨額
	   FROM 員工

---- 字串連接
SELECT 身份證字號, 姓名, 
	   城市 + '市' + 街道 AS 地址
	   FROM 員工

-- T-SQL 函數使用
---- 從學生的生日資料，利用內建函數計算年齡
SELECT 學號, 姓名, 
	   GETDATE() AS 今天, 
	   DATEDIFF(year, 生日, GETDATE()) AS 年齡
	   FROM 學生

