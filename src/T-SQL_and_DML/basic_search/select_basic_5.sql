-- SELECT 子句基礎

-- 邏輯運算子練習 LIKE
---- 查詢資料表 教授 中屬於資訊相關科系 CS 和 CIS 的教授記錄
SELECT * FROM 教授
	WHERE 科系 LIKE '%S%'

---- 查詢資料表 班級 中上課教室在二樓的課程資料
SELECT DISTINCT 課程編號, 上課時間, 教室
	FROM 班級
	WHERE 教室 LIKE '%2_-%'

---- 查詢資料表 員工中 身份證字號是 A-D 範圍字母開頭的員工資料
SELECT * FROM 員工
	WHERE 身份證字號 LIKE '[A-D]%'
