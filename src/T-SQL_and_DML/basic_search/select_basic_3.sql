-- SELECT �l�y��¦

-- �R�����Ƭ���
---- ���ƪ����
SELECT �Ǥ� FROM �ҵ{

---- �h�����Ƹ��
SELECT DISTINCT �Ǥ� FROM �ҵ{

-- ���o�e�X���O��
---- ��� �ǥ� �e 3 ���ǥͰO�����
SELECT TOP 3 * FROM �ǥ�

---- ���X �ǥ� �e 25 % ���ǥͰO��
SELECT TOP 25 PERCENT * FROM �ǥ�

-- WITH TIES �P ORDER BY �l�y
---- �Q�� WITH TIES ���X �Ҫ� ��ƪ��e 3 ����ơA�p���P�Ǥ����O���]�@����ܥX��
---- �åB�Q�� ORDER BY �l�y���w�� �Ǥ� �Ӱ��ƧǳW�h
SELECT TOP 3 WITH TIES * FROM �ҵ{
	ORDER BY �Ǥ�

