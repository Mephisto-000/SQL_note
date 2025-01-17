-- SELECT 子句基礎

-- AND 與 OR 運算子
---- 查詢 課程 資料表的課程編號包含 '1' 子字串
---- ，而且課程名稱欄位有 '程式' 子字串
SELECT * FROM 課程
    WHERE 課程編號 LIKE '%1%' AND 名稱 LIKE '%程式%'

---- 查詢 課程 資料表的課程編號包含 '3' 子字串
---- ，或課程名稱欄位有 '程式' 子字串
SELECT * FROM 課程
    WHERE 課程編號 LIKE '%3%' OR 名稱 LIKE '%程式%'

-- 連接多個條件與與括號
---- 查詢 課程 資料表的課程編號包含 '2' 子字串，
---- 和課程名稱欄位有 '程式' 子字串。
---- 或學分大於等於 4 
SELECT * FROM 課程
    WHERE 課程編號 LIKE '%2%' 
        AND 名稱 LIKE '%程式%'
        OR 學分 >= 4

---- 查詢 課程 資料表的課程編號包含 '2' 子字串，
---- 和課程名稱欄位有 '程式' 子字串。
---- 或學分大於等於 4 ，後兩個條件用括號括起
SELECT * FROM 課程
    WHERE 課程編號 LIKE '%2%' 
        AND (名稱 LIKE '%程式%'
        OR 學分 >= 4)

-- 算術運算子
---- 查詢 員工 資料表的薪水在扣稅和保險金額
---- 後的薪水淨額小於 40000 元的員工紀錄
SELECT 身份證字號, 姓名, 電話 FROM 員工
    WHERE (薪水 - 扣稅 - 保險) < 40000

