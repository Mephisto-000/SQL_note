-- �s�W�m�ߪ���Ʈw

USE master 
GO
IF  EXISTS (SELECT name FROM sys.databases WHERE name='�аȨt��')
DROP DATABASE [�аȨt��]
GO

CREATE DATABASE [�аȨt��]
ON PRIMARY
	(	NAME = '�аȨt��', 
		FILENAME = 'C:\Github\SQL_note\src\T-SQL_and_DML\db\�аȨt��.mdf'
	)
LOG ON
	(	NAME = '�аȨt��_log', 
		FILENAME = 'C:\Github\SQL_note\src\T-SQL_and_DML\db\�аȨt��_log.ldf'
	)

GO

USE [�аȨt��]
GO

CREATE TABLE [�ǥ�] (
	[�Ǹ�] char(4) NOT NULL,
	[�m�W] varchar(12) NOT NULL,
	[�ʧO] char(2) NULL,
	[�q��] varchar(15) NULL,
	[�ͤ�] date NULL,
  PRIMARY KEY ([�Ǹ�])
) 
GO

CREATE TABLE [�ҵ{] (
	[�ҵ{�s��] char(5) NOT NULL,
	[�W��] varchar(30) NULL,
	[�Ǥ�] int NULL,
  PRIMARY KEY ([�ҵ{�s��])
) 
GO

CREATE TABLE [�б�] (
	[�б½s��] char(4) NOT NULL,
	[¾��] varchar(10) NULL,
	[��t] varchar(5) NULL,
	[�����Ҧr��] char(10) NOT NULL,
  PRIMARY KEY ([�б½s��])
) 
GO

CREATE TABLE [�Z��] (
	[�б½s��] char(4) NOT NULL,
	[�Ǹ�] char(4) NOT NULL,
	[�ҵ{�s��] char(5) NOT NULL,	
	[�W�Үɶ�] datetime NULL,
	[�Ы�] varchar(8) NULL,
  PRIMARY KEY ([�б½s��],[�ҵ{�s��],[�Ǹ�])
) 
GO

CREATE TABLE [���u] (
	[�����Ҧr��] CHAR(10) NOT NULL,
	[�m�W] varchar(12) NULL,
	[����] char(5) NULL,
	[��D] varchar(30) NULL,
	[�q��] char(12) NULL,
	[�~��] money NULL,
	[�O�I] money NULL,
	[���|] money NULL,
  PRIMARY KEY ([�����Ҧr��])
) 
GO

ALTER TABLE [�Z��]
  ADD FOREIGN KEY([�Ǹ�]) REFERENCES [�ǥ�] ([�Ǹ�])
GO
ALTER TABLE [�Z��] 
  ADD FOREIGN KEY([�ҵ{�s��]) REFERENCES [�ҵ{] ([�ҵ{�s��])  
GO
ALTER TABLE [�Z��] 
  ADD FOREIGN KEY([�б½s��]) REFERENCES [�б�] ([�б½s��])   
GO
ALTER TABLE [�б�] 
  ADD FOREIGN KEY([�����Ҧr��]) REFERENCES [���u] ([�����Ҧr��])   
GO

INSERT INTO [�ǥ�] 
VALUES ('S001','���|�w','�k','02-22222222','2003/09/03')
GO
INSERT INTO [�ǥ�] 
VALUES ('S002','���p��','�k','03-33333333','2004/02/02')
GO
INSERT INTO [�ǥ�] 
VALUES ('S003','�i�L��','�k','04-44444444','2002/05/03')
GO
INSERT INTO [�ǥ�] 
VALUES ('S004','���p�w','�k','05-55555555','2002/06/13')
GO
INSERT INTO [�ǥ�] 
VALUES ('S005','�]�P��','�k','06-66666666',NULL)
GO
INSERT INTO [�ǥ�] 
VALUES ('S006','�P�N��','�k','02-33333333','2003/12/23')
GO
INSERT INTO [�ǥ�] 
VALUES ('S007','���@�s','�k','03-66666666','2003/11/23')
GO
INSERT INTO [�ǥ�] 
VALUES ('S008','�B�o��','�k','02-11111122','2003/02/23')
GO

INSERT INTO [�ҵ{] 
VALUES ('CS101','�p�������',4)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS121','�����ƾ�',4)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS111','�u�ʥN��',4)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS203','�{���y��',3)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS213','����ɦV�{���]�p',2)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS222','��Ʈw�޲z�t��',3)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS205','�����{���]�p',3)
GO
INSERT INTO [�ҵ{] 
VALUES ('CS349','����ɦV���R',3)
GO

INSERT INTO [���u] 
VALUES ('A123456789','���y�s','�x�_','�H�q��',
        '02-11111111', 80000, 5000, 2000)
GO
INSERT INTO [���u] 
VALUES ('A222222222','������','���','������',
        '03-11111111', 80000, 4500, 2000)
GO
INSERT INTO [���u] 
VALUES ('H098765432','���E��','��','�H�|��',
        '02-33111111', 60000, 4000, 1500)
GO
INSERT INTO [���u] 
VALUES ('F213456780','���p�w','�s�_','�s���ϥ|����',
        NULL, 50000, 3000, 1000)
GO
INSERT INTO [���u] 
VALUES ('A221304680','���I��','�x�_','�����F��',
        '02-55555555', 35000, 1000, 800)
GO
INSERT INTO [���u] 
VALUES ('F332213046','�i�L��','�x�_','���R��',
        '02-55555555', 50000, 1500, 1000)
GO
INSERT INTO [���u] 
VALUES ('D333300333','���߹s','���','�g���',
        NULL, 50000, 2500, 1000)
GO
INSERT INTO [���u] 
VALUES ('D444403333','�B�o��','�s�_','�O���Ϥ�߸�',
        '04-55555555', 25000, 500, 500)
GO
INSERT INTO [���u] 
VALUES ('E444006666','�p�s�k','�s�_','�O���Ϥ�����',
        '04-55555555', 25000, 500, 500)
GO

INSERT INTO [�б�] 
VALUES ('I001','�б�',  'CS', 'A123456789')
GO
INSERT INTO [�б�] 
VALUES ('I002','�б�',  'CS', 'A222222222')
GO
INSERT INTO [�б�] 
VALUES ('I003','�Ʊб�','CIS','H098765432')
GO
INSERT INTO [�б�] 
VALUES ('I004','���v','MATH', 'F213456780')
GO

INSERT INTO [�Z��] 
VALUES ('I001','S001','CS101','12:00:00','180-M')
GO
INSERT INTO [�Z��] 
VALUES ('I001','S005','CS101','12:00:00','180-M')
GO
INSERT INTO [�Z��] 
VALUES ('I001','S006','CS101','12:00:00','180-M')
GO
INSERT INTO [�Z��] 
VALUES ('I002','S003','CS121','08:00:00','221-S')
GO
INSERT INTO [�Z��] 
VALUES ('I002','S008','CS121','08:00:00','221-S')
GO

INSERT INTO [�Z��] 
VALUES ('I004','S003','CS111','15:00:00','321-M')
GO
INSERT INTO [�Z��] 
VALUES ('I004','S002','CS111','15:00:00','321-M')
GO
INSERT INTO [�Z��] 
VALUES ('I004','S005','CS111','15:00:00','321-M')
GO
INSERT INTO [�Z��] 
VALUES ('I001','S003','CS213','09:00:00','622-G')
GO
INSERT INTO [�Z��] 
VALUES ('I001','S005','CS213','09:00:00','622-G')
GO
INSERT INTO [�Z��] 
VALUES ('I003','S001','CS213','12:00:00','500-K')
GO
INSERT INTO [�Z��] 
VALUES ('I003','S006','CS213','12:00:00','500-K')
GO
INSERT INTO [�Z��] 
VALUES ('I002','S001','CS222','13:00:00','100-M')
GO
INSERT INTO [�Z��] 
VALUES ('I002','S002','CS222','13:00:00','100-M')
GO
INSERT INTO [�Z��] 
VALUES ('I002','S004','CS222','13:00:00','100-M')
GO
INSERT INTO [�Z��] 
VALUES ('I003','S001','CS203','10:00:00','221-S')
GO
INSERT INTO [�Z��] 
VALUES ('I003','S006','CS203','10:00:00','221-S')
GO
INSERT INTO [�Z��] 
VALUES ('I003','S008','CS203','10:00:00','221-S')
GO
INSERT INTO [�Z��] 
VALUES ('I003','S002','CS203','14:00:00','327-S')
GO
INSERT INTO [�Z��] 
VALUES ('I001','S001','CS349','15:00:00','380-L')
GO
INSERT INTO [�Z��] 
VALUES ('I001','S003','CS349','15:00:00','380-L')
GO
