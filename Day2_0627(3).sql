--������ ����� create tabel, ������ ���� �׽�Ʈ
----------------1. DML   INSERT ����(�������߰�)--------------------------
CREATE TABLE TBL_MEMBER(
mon NUMBER,
name nvarchar2(50),
email varchar2(100),
join_date DATE);
--��� �÷��� �����͸� �����ϴ� ���� (�÷��� ����)
INSERT INTO TBL_MEMBERs VALUE(1,'����','momo@naver.com','2022-03-02');
--�Ϻ� �÷��� �����͸� �����ϴ� ����
INSERT INTO TBL_MEMBERs (mon,name)		--������ ����� �÷��� ����
VALUES(2,'�̳���');
--------2.DML SELECT ����(������ ����ȸ)
----select ��ȸ�� �÷� ��� from ���̺� �̸� [WHERE ���ǽ�] ; ��� �÷��� *�� ��ü
SELECT name FROM TBL_MEMBER;
SELECT name,JOIN_date FROM TBL_MEMBER;
SELECT *FROM TBL_MEMBER;
SELECT *FROM TBL_MEMBER WHERE name='�ִ���';
SELECT *FROM TBL_MEMBER WHERE join_date >'2022-03-03';
--null�� ��ȸ
SELECT *FROM TBL_MEMBER WHERE email IS NULL;
SELECT *FROM TBL_MEMBER WHERE email IS NOT NULL;
--���ڿ��� �κΰ˻�
SELECT *FROM TBL_MEMBER WHERE name LIKE '%����';
SELECT *FROM TBL_MEMBER WHERE name LIKE '����%';
SELECT *FROM TBL_MEMBER WHERE name LIKE '%����%';
---or ���� : mno���� 1 �Ǵ� 2 �Ǵ� 4
SELECT mno FROM TBL_MEMBER   WHERE mno =1 OR mno =2 OR mno =4;
-- 			����Ŭ�� or ��ü ������ : IN (������ Į��������)	
SELECT *FROM  TBL_MEMBER WHERE mno NOT IN (3);
SELECT *FROM  TBL_MEMBER WHERE mno NOT IN (1,2,4);
SELECT *FROM  TBL_MEMBER WHERE name NOT IN ('����','�ִ���');



--ó�� ���� ���̺� ���� �� mno �÷��� 5�� ��� ����
--					��� �����Ҷ��� mno �÷��� ���� ������մϴ�.
SELECT *FROM TBL_MEMBER;

------date ����--------------------------------------------------------------
INSERT INTO TBL_MEMBER 
VALUES(3,'�ִ���','dahy@naver.com',to_date('2022-03-04 16:47','YYYY-MM-DD HH24:MI'));

--���� �ý����� ��¥�� �ð� : sysdate �Լ�
INSERT INTO TBL_MEMBER VALUES (4,'����','aaa@gmail.com',sysdate);
SELECT *FROM TBL_MEMBER;

