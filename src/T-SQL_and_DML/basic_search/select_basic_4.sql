-- SELECT 子句基礎

-- WHERE 子句
---- 條件值為字串
SELECT * FROM 學生	
	WHERE 學號 = 'S002'

---- 條件值為數值
SELECT * FROM 員工
	WHERE 薪水<50000

---- 條件值為日期/時間
SELECT * FROM 學生
	WHERE 生日 = '2004-02-02'

