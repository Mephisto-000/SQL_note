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

