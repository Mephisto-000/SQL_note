-- SELECT �l�y��¦

-- BETWEEN/AND 
---- �q �ǥ� ��ƪ����ͤ����A�d�� 2003�~1��1���2003�~12��31�骺�O��
SELECT * FROM �ǥ�
	WHERE �ͤ� BETWEEN '2003-1-1' AND '2003-12-31'

---- �q �ҵ{ ��ƪ����Ǥ����A�d�� 2~3 �Ǥ����O��
SELECT * FROM �ҵ{
	WHERE �Ǥ� BETWEEN 2 AND 3

-- IN
---- �q �ҵ{ ��ƪ��d�߯S�w���ҵ{�s��
SELECT * FROM �ҵ{
	WHERE �ҵ{�s�� IN ('CS101', 'CS222', 'CS100', 'CS213')

---- �q �ҵ{ ��ƪ��A�Ǥ� 2 �� 4 �Ǥ�
SELECT * FROM �ҵ{
	WHERE �Ǥ� IN (2, 4)

