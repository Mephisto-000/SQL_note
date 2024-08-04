-- SELECT 子句基礎

-- COUNT 函數
---- 查詢 學生 資料表的學生總數
SELECT COUNT(*) AS 學生數 FROM 學生

---- 查詢 員工 資料表的員工薪水超過 40000 的員工總數
SELECT COUNT(*) AS 員工數 FROM 員工
    WHERE 薪水 > 40000

-- AVG 函數
---- 查詢 員工 資料表查詢員工的平均薪資
SELECT AVG(薪水) AS 平均薪水 FROM 員工

---- 查詢 課程 資料表查詢課程編號包含 '1' 子字串的課程總數，
---- 和學分的平均值
SELECT COUNT(*) AS 課程總數, 
       AVG(學分) AS 學分平均值 FROM 課程
    WHERE 課程編號 LIKE '%1%'

