--����, custom_id 'mina012'�� ������ ���� ��ȸ : pcode ��ȸ�ϰ� pname�� �˼� ����
SELECT pcode FROM TBL_BUY WHERE CUSTOM_ID = 'mina012';

--1. ��������(select �ȿ� select�� �����)

SELECT pname FROM TBL_PRODUCT tp 
	WHERE PCODE =
	(SELECT pcode FROM tbl_buy WHERE custom_id='mina012'--���� ����
						AND buy_date = '2022-2-6');	
						
SELECT pname FROM TBL_PRODUCT tp 
	WHERE PCODE IN 
	(SELECT PCODE FROM TBL_BUY tb WHERE custom_id='mina012');
	
SELECT pcode FROM tbl_buy WHERE custom_id='mina012'--���� ����
						AND buy_date = '2022-2-6'
						
	SELECT pcode FROM TBL_BUY tb WHERE CUSTOM_ID ='mina012';

--�������� ������ : �ܺ������� ���ǽ��� ����࿡ ���� �˻��Ҷ����� ���������� ����ǹǷ�
		--ó���ӵ��� ������ ����ϴ�. -->���̺��� ���� ������
SELECT *FROM TBL_PRODUCT tp ;

-- �������� ������ : �ܺ������� ���ǽ��� ����࿡ ���� �˻��Ҷ����� ���������� ����ǹǷ�
--		  ó�� �ӵ��� ������ ����ϴ�. --> ���̺��� ���� ���� ������� �����մϴ�. 

-- 2. SELECT �� ���̺� JOIN : �� �̻��� ���̺�(�ַ� ���������� ���̺�)�� �����Ͽ� �����͸� ��ȸ�ϴ� ���
-- ���� ���� : �� �̻��� ���̺��� ����� �÷��� ���� �� �÷����� '����(=)'�� �̿��Ͽ� join �մϴ�.
-- ����1 : select ~~~ from ���̺�1 a,���̺�2 b 
--					where a.�����÷�1=b.�����÷�1;
--������ ���� ��ǰ �߰�
INSERT INTO TBL_PRODUCT VALUES ('GALAXYS22','A1','������s22',555500);
	SELECT *FROM TBL_PRODUCT tp ,TBL_BUY tb 
				WHERE tp.PCODE = tb.PCODE ; --���� ����
SELECT custno,custname,grade,price FROM member_tbl_02,money_tbl_02;
		SELECT *FROM TBL_PRODUCT tp 
			JOIN TBL_BUY tb 
			ON tp.PCODE =tb.PCODE ;
			
		--mina012�� ������ ��ǰ���� �����ΰ� ��ȸ�ϱ�
		SELECT tp.pname FROM TBL_PRODUCT tp ,TBL_BUY tb 
			WHERE tp.PCODE =tb.PCODE AND custom_id ='mina012';
	
		
--���� �׽�Ʈ
	SELECT *FROM TBL_CUSTOM tc ,TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID ;
		
		
		
SELECT *FROM  TBL_CUSTOM tc 
	JOIN TBL_BUY tb 
		ON tc.custom_id =tb.CUSTOM_ID;
	
	
	
	SELECT tc.CUSTOM_ID,NAME,pcode  FROM  TBL_CUSTOM tc ,TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID ;
	
	
	SELECT tc.CUSTOM_ID,NAME,pcode  FROM  TBL_CUSTOM tc ,TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID
		AND tc.CUSTOM_ID ='mina012';
		
		
SELECT *FROM TBL_PRODUCT tp ,
(SELECT tc.custom_id,name,email,age,REG_DATE ,pcode,quantity ,buy_date,buyno
			FROM TBL_CUSTOM tc ,TBL_BUY tb
			WHERE tc.CUSTOM_ID = tb.CUSTOM_ID) temp 
			WHERE tp.PCODE =temp.pcode;
		
		
		SELECT *FROM TBL_BUY tb ,TBL_CUSTOM tc ,TBL_PRODUCT tp 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID AND tp.PCODE =tb.PCODE ;
	
	--3 .�ܺ� ����(outer join ): = ������ ����ϴ� ����,
	SELECT *FROM TBL_PRODUCT tp ,TBL_BUY tb 
				WHERE tp.PCODE = tb.PCODE(+) ; --���� ����

		SELECT *FROM TBL_PRODUCT tp 
			LEFT OUTER JOIN TBL_BUY tb 
			ON tp.PCODE =tb.PCODE ;

		SELECT *FROM TBL_BUY tb 
			RIGHT OUTER JOIN TBL_PRODUCT tp 
			ON tb.PCODE =tp.PCODE ;
		
		
						