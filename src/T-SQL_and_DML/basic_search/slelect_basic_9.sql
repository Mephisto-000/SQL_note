-- SELECT 子句基礎

-- GROUP BY 子句
---- 查詢 班級 資料表，查詢課程編號和
---- 計算每一門課程有多少位學生上課
SELECT 課程編號, COUNT(*) AS 學生數
    FROM 班級 GROUP BY 課程編號

---- 查詢 學生 資料表，使用群組查詢
---- 來統計男和女性別的學生數
SELECT 性別, COUNT(*) AS 學生數
    FROM 學生 GROUP BY 性別

-- HAVING 子句
---- 查詢 班級 資料表，找出學生 S002 
---- 上課的課程清單
SELECT 學號, 課程編號 FROM 班級
    GROUP BY 課程編號, 學號
    HAVING 學號 = 'S002'

---- 查詢 班級 資料表，找出教授編號是 'I003'
---- 其教授課程有超過 2 位學生上課的課程清單
SELECT 課程編號, COUNT(*) AS 學生數
    FROM 班級
    WHERE 教授編號 = 'I003'
    GROUP BY 課程編號
    HAVING COUNT(*) >= 2

