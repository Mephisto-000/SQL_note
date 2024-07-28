-- 新增練習的資料庫

USE master 
GO
IF  EXISTS (SELECT name FROM sys.databases WHERE name='教務系統')
DROP DATABASE [教務系統]
GO

CREATE DATABASE [教務系統]
ON PRIMARY
	(	NAME = '教務系統', 
		FILENAME = 'C:\Github\SQL_note\src\T-SQL_and_DML\db\教務系統.mdf'
	)
LOG ON
	(	NAME = '教務系統_log', 
		FILENAME = 'C:\Github\SQL_note\src\T-SQL_and_DML\db\教務系統_log.ldf'
	)

GO

USE [教務系統]
GO

CREATE TABLE [學生] (
	[學號] char(4) NOT NULL,
	[姓名] varchar(12) NOT NULL,
	[性別] char(2) NULL,
	[電話] varchar(15) NULL,
	[生日] date NULL,
  PRIMARY KEY ([學號])
) 
GO

CREATE TABLE [課程] (
	[課程編號] char(5) NOT NULL,
	[名稱] varchar(30) NULL,
	[學分] int NULL,
  PRIMARY KEY ([課程編號])
) 
GO

CREATE TABLE [教授] (
	[教授編號] char(4) NOT NULL,
	[職稱] varchar(10) NULL,
	[科系] varchar(5) NULL,
	[身份證字號] char(10) NOT NULL,
  PRIMARY KEY ([教授編號])
) 
GO

CREATE TABLE [班級] (
	[教授編號] char(4) NOT NULL,
	[學號] char(4) NOT NULL,
	[課程編號] char(5) NOT NULL,	
	[上課時間] datetime NULL,
	[教室] varchar(8) NULL,
  PRIMARY KEY ([教授編號],[課程編號],[學號])
) 
GO

CREATE TABLE [員工] (
	[身份證字號] CHAR(10) NOT NULL,
	[姓名] varchar(12) NULL,
	[城市] char(5) NULL,
	[街道] varchar(30) NULL,
	[電話] char(12) NULL,
	[薪水] money NULL,
	[保險] money NULL,
	[扣稅] money NULL,
  PRIMARY KEY ([身份證字號])
) 
GO

ALTER TABLE [班級]
  ADD FOREIGN KEY([學號]) REFERENCES [學生] ([學號])
GO
ALTER TABLE [班級] 
  ADD FOREIGN KEY([課程編號]) REFERENCES [課程] ([課程編號])  
GO
ALTER TABLE [班級] 
  ADD FOREIGN KEY([教授編號]) REFERENCES [教授] ([教授編號])   
GO
ALTER TABLE [教授] 
  ADD FOREIGN KEY([身份證字號]) REFERENCES [員工] ([身份證字號])   
GO

INSERT INTO [學生] 
VALUES ('S001','陳會安','男','02-22222222','2003/09/03')
GO
INSERT INTO [學生] 
VALUES ('S002','江小魚','女','03-33333333','2004/02/02')
GO
INSERT INTO [學生] 
VALUES ('S003','張無忌','男','04-44444444','2002/05/03')
GO
INSERT INTO [學生] 
VALUES ('S004','陳小安','男','05-55555555','2002/06/13')
GO
INSERT INTO [學生] 
VALUES ('S005','孫燕之','女','06-66666666',NULL)
GO
INSERT INTO [學生] 
VALUES ('S006','周杰輪','男','02-33333333','2003/12/23')
GO
INSERT INTO [學生] 
VALUES ('S007','蔡一零','女','03-66666666','2003/11/23')
GO
INSERT INTO [學生] 
VALUES ('S008','劉得華','男','02-11111122','2003/02/23')
GO

INSERT INTO [課程] 
VALUES ('CS101','計算機概論',4)
GO
INSERT INTO [課程] 
VALUES ('CS121','離散數學',4)
GO
INSERT INTO [課程] 
VALUES ('CS111','線性代數',4)
GO
INSERT INTO [課程] 
VALUES ('CS203','程式語言',3)
GO
INSERT INTO [課程] 
VALUES ('CS213','物件導向程式設計',2)
GO
INSERT INTO [課程] 
VALUES ('CS222','資料庫管理系統',3)
GO
INSERT INTO [課程] 
VALUES ('CS205','網頁程式設計',3)
GO
INSERT INTO [課程] 
VALUES ('CS349','物件導向分析',3)
GO

INSERT INTO [員工] 
VALUES ('A123456789','陳慶新','台北','信義路',
        '02-11111111', 80000, 5000, 2000)
GO
INSERT INTO [員工] 
VALUES ('A222222222','楊金欉','桃園','中正路',
        '03-11111111', 80000, 4500, 2000)
GO
INSERT INTO [員工] 
VALUES ('H098765432','李鴻章','基隆','信四路',
        '02-33111111', 60000, 4000, 1500)
GO
INSERT INTO [員工] 
VALUES ('F213456780','陳小安','新北','新店區四維路',
        NULL, 50000, 3000, 1000)
GO
INSERT INTO [員工] 
VALUES ('A221304680','郭富城','台北','忠孝東路',
        '02-55555555', 35000, 1000, 800)
GO
INSERT INTO [員工] 
VALUES ('F332213046','張無忌','台北','仁愛路',
        '02-55555555', 50000, 1500, 1000)
GO
INSERT INTO [員工] 
VALUES ('D333300333','王心零','桃園','經國路',
        NULL, 50000, 2500, 1000)
GO
INSERT INTO [員工] 
VALUES ('D444403333','劉得華','新北','板橋區文心路',
        '04-55555555', 25000, 500, 500)
GO
INSERT INTO [員工] 
VALUES ('E444006666','小龍女','新北','板橋區中正路',
        '04-55555555', 25000, 500, 500)
GO

INSERT INTO [教授] 
VALUES ('I001','教授',  'CS', 'A123456789')
GO
INSERT INTO [教授] 
VALUES ('I002','教授',  'CS', 'A222222222')
GO
INSERT INTO [教授] 
VALUES ('I003','副教授','CIS','H098765432')
GO
INSERT INTO [教授] 
VALUES ('I004','講師','MATH', 'F213456780')
GO

INSERT INTO [班級] 
VALUES ('I001','S001','CS101','12:00:00','180-M')
GO
INSERT INTO [班級] 
VALUES ('I001','S005','CS101','12:00:00','180-M')
GO
INSERT INTO [班級] 
VALUES ('I001','S006','CS101','12:00:00','180-M')
GO
INSERT INTO [班級] 
VALUES ('I002','S003','CS121','08:00:00','221-S')
GO
INSERT INTO [班級] 
VALUES ('I002','S008','CS121','08:00:00','221-S')
GO

INSERT INTO [班級] 
VALUES ('I004','S003','CS111','15:00:00','321-M')
GO
INSERT INTO [班級] 
VALUES ('I004','S002','CS111','15:00:00','321-M')
GO
INSERT INTO [班級] 
VALUES ('I004','S005','CS111','15:00:00','321-M')
GO
INSERT INTO [班級] 
VALUES ('I001','S003','CS213','09:00:00','622-G')
GO
INSERT INTO [班級] 
VALUES ('I001','S005','CS213','09:00:00','622-G')
GO
INSERT INTO [班級] 
VALUES ('I003','S001','CS213','12:00:00','500-K')
GO
INSERT INTO [班級] 
VALUES ('I003','S006','CS213','12:00:00','500-K')
GO
INSERT INTO [班級] 
VALUES ('I002','S001','CS222','13:00:00','100-M')
GO
INSERT INTO [班級] 
VALUES ('I002','S002','CS222','13:00:00','100-M')
GO
INSERT INTO [班級] 
VALUES ('I002','S004','CS222','13:00:00','100-M')
GO
INSERT INTO [班級] 
VALUES ('I003','S001','CS203','10:00:00','221-S')
GO
INSERT INTO [班級] 
VALUES ('I003','S006','CS203','10:00:00','221-S')
GO
INSERT INTO [班級] 
VALUES ('I003','S008','CS203','10:00:00','221-S')
GO
INSERT INTO [班級] 
VALUES ('I003','S002','CS203','14:00:00','327-S')
GO
INSERT INTO [班級] 
VALUES ('I001','S001','CS349','15:00:00','380-L')
GO
INSERT INTO [班級] 
VALUES ('I001','S003','CS349','15:00:00','380-L')
GO
