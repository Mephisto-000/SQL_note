-- SELECT �l�y��¦

-- �޿�B��l�m�� LIKE
---- �d�߸�ƪ� �б� ���ݩ��T������t CS �M CIS ���б°O��
SELECT * FROM �б�
	WHERE ��t LIKE '%S%'

---- �d�߸�ƪ� �Z�� ���W�ұЫǦb�G�Ӫ��ҵ{���
SELECT DISTINCT �ҵ{�s��, �W�Үɶ�, �Ы�
	FROM �Z��
	WHERE �Ы� LIKE '%2_-%'

---- �d�߸�ƪ� ���u�� �����Ҧr���O A-D �d��r���}�Y�����u���
SELECT * FROM ���u
	WHERE �����Ҧr�� LIKE '[A-D]%'
