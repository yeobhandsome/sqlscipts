--���� : ���� �׷�ȭ �մϴ�. �������� �Ʒ�ó��
--SELECT ��
--WHERE  �׷�ȭ �ϱ� ���� ����� ���ǽ�
--group BY �׷�ȭ�� ����� �÷���
--HAVING �׷�ȭ ����� ���� ���ǽ�
--order BY �׷�ȭ ��� ������ �÷���� ���

SELECT PCODE,count(*) FROM TBL_BUY tb GROUP BY pcode;


SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy# tb
           GROUP BY PCODE 
           ORDER BY cnt;

--�׷�ȭ �Ŀ� �����հ谡 3 �̻��� ��ȸ          
          SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy tb
           GROUP BY PCODE 
           HAVING sum(QUANTITY)>=3
           ORDER BY cnt;
--day 02 ����
--���ų�¥ 2022-04-01 ������ �͸� �׷��Ͽ� ��ȸ
SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy tb
           GROUP BY PCODE 
           HAVING sum(QUANTITY)>=3
           ORDER BY cnt;
          
          SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy tb
			WHERE BUY_DATE >='2022-04-01'
           GROUP BY PCODE 
          ORDER BY cnt;
          
          
          