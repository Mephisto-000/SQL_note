-- SELECT 子句基礎

-- 刪除重複紀錄
---- 重複的資料
SELECT 學分 FROM 課程

---- 去除重複資料
SELECT DISTINCT 學分 FROM 課程

-- 取得前幾筆記錄
---- 顯示 學生 前 3 筆學生記錄資料
SELECT TOP 3 * FROM 學生

---- 取出 學生 前 25 % 的學生記錄
SELECT TOP 25 PERCENT * FROM 學生

-- WITH TIES 與 ORDER BY 子句
---- 利用 WITH TIES 取出 課表 資料表內前 3 筆資料，如有同學分的記錄也一併顯示出來
---- 並且利用 ORDER BY 子句指定用 學分 來做排序規則
SELECT TOP 3 WITH TIES * FROM 課程
	ORDER BY 學分

