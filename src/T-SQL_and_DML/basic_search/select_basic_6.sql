-- SELECT 子句基礎

-- BETWEEN/AND 
---- 從 學生 資料表中的生日欄位，查詢 2003年1月1日至2003年12月31日的記錄
SELECT * FROM 學生
	WHERE 生日 BETWEEN '2003-1-1' AND '2003-12-31'

---- 從 課程 資料表中的學分欄位，查詢 2~3 學分的記錄
SELECT * FROM 課程
	WHERE 學分 BETWEEN 2 AND 3

-- IN
---- 從 課程 資料表中查詢特定的課程編號
SELECT * FROM 課程
	WHERE 課程編號 IN ('CS101', 'CS222', 'CS100', 'CS213')

---- 從 課程 資料表中，學分 2 或 4 學分
SELECT * FROM 課程
	WHERE 學分 IN (2, 4)

-- NOT
---- 查詢課程編號不是 CS101、CS222、CS100、CS213 的課程
SELECT * FROM 課程
	WHERE 課程編號 NOT IN ('CS101', 'CS222', 'CS100', 'CS213')

