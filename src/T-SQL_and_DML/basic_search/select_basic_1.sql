-- SELECT 子句基礎

-- 查詢 學生 資料表的 學號、姓名、生日 的紀錄
SELECT 學號, 姓名, 生日 FROM 學生

-- 查詢 課程 資料表的所有紀錄
SELECT * FROM 課程

-- 欄位(AS)別名範例
SELECT 學號 AS 學生學號, 
	   姓名 AS 學生姓名, 
	   生日 AS 學生生日

	   FROM 學生

