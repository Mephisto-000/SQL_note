-- SELECT 子句基礎

-- WITH CUP 子句
---- 查詢 班級 資料表找出教授 I001 和 I003
---- 教授課程的學生數小計和加總，和各課程
---- 的學生總數
SELECT 教授編號, 課程編號, COUNT(學號) AS 總數
    FROM 班級
    WHERE 教授編號 IN ('I001', 'I003')
    GROUP BY 教授編號, 課程編號 WITH CUBE
    
-- WITH ROLLUP 子句
---- 查詢 班級 資料表找出教授 I001 和 I003
---- 教授課程的學生數小計和加總
SELECT 教授編號, 課程編號, COUNT(學號) AS 總數
    FROM 班級
    WHERE 教授編號 IN ('I001', 'I003')
    GROUP BY 教授編號, 課程編號 WITH ROLLUP

-- GROUPING SETS 子句
---- 查詢 班級 資料表找出教授 I001 和 I003
---- 教授課程的學生數小計和加總
SELECT 教授編號, 課程編號, COUNT(學號) AS 總數
    FROM 班級
    WHERE 教授編號 IN ('I001', 'I003')
    GROUP BY GROUPING SETS
    (
        (教授編號, 課程編號), 
        (教授編號), 
        ()
    )

-- ORDER BY 子句
---- 查詢 員工 資料表，查詢薪水大於 35000 元的
---- 員工紀錄，並且使用薪水欄位進行由大至小排序
SELECT 姓名, 薪水, 電話 FROM 員工
    WHERE 薪水 >= 35000
    ORDER BY 薪水 DESC

---- 查詢 員工 資料表，查詢薪水大於 35000 元的
---- 員工紀錄，並且使用薪水欄位進行由小至大排序
SELECT 姓名, 薪水, 電話 FROM 員工
    WHERE 薪水 >= 35000
    ORDER BY 薪水 ASC

