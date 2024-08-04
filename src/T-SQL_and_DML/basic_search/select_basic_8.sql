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

-- MAX 函數
---- 查詢 員工 資料表，查詢保險金額第一名的員工金額
SELECT MAX(保險) AS 保險金額 FROM 員工

---- 查詢 課程 資料表查詢課程編號包含 '1' 子字串
---- 的最大學分數
SELECT MAX(學分) AS 最大學分數 FROM 課程
    WHERE 課程編號 LIKE '%1%'

-- MIN 函數
---- 查詢 員工 資料表保險金額最後一名員工的金額
SELECT MIN(保險) AS 保險金額 FROM 員工

---- 查詢 課程 資料表課程編號包含 '1' 子字串的
---- 最少學分數
SELECT MIN(學分) AS 最少學分數 FROM 課程
    WHERE 課程編號 LIKE '%1%'

-- SUM 函數
---- 查詢 員工 資料表，計算員工的薪水總和與平均
SELECT SUM(薪水) AS 薪水總和, 
       SUM(薪水) / COUNT(*) AS 薪水平均
       FROM 員工

---- 查詢 課程 資料表，計算課程編號包含 '1' 子字串
---- 的學分數總和
SELECT SUM(學分) AS 學分總和 FROM 課程
       WHERE 課程編號 LIKE '%1%'

