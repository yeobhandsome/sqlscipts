/*
1. hire_date�� 2006�� 1�� 1�� ������ ������ �̸�,��,�̸���

2. lastname�� 'Jones' �� ������ ��� �÷�

3. salary �� 5000 �̻��� ������ �̸�,��,JOB_ID ��ȸ

4. JOB_ID �� ACCOUNT �� ���� ������ �̸�,��,salary ��ȸ

5. �μ�_ID �� 50 ,60, 80,90 �� ������ ����_ID, �̸�,�� ��ȸ
*/
--���ؿ�--
--1
SELECT LAST_NAME, first_name, EMAIL FROM EMPLOYEES WHERE HIRE_DATE <'2006-01-01';
--2
SELECT *FROM EMPLOYEES WHERE LAST_NAME ='Jones';
--��ҹ��� �˻�� ���ǽĿ��� �����ؾ��մϴ�.
SELECT *FROM EMPLOYEES WHERE UPPER(LAST_NAME)	='JONES'; 
SELECT *FROM EMPLOYEES WHERE LOWER(LAST_NAME)	='jones';
--3
SELECT LAST_NAME ,FIRST_NAME ,JOB_ID  FROM EMPLOYEES WHERE SALARY>=5000;
--4
SELECT LAST_NAME ,FIRST_NAME ,SALARY  FROM EMPLOYEES WHERE JOB_ID LIKE '%ACCOUNT%';
--5
SELECT EMPLOYEE_ID , FIRST_NAME ,LAST_NAME FROM EMPLOYEES WHERE DEPARTMENT_ID in(50,60,80,90);

--��� �Լ� : count, avg,max,min .����Լ��� �׷��Լ���� �մϴ�.
		--	�ش� �Լ� ������� ���ϱ� ���� Ư�� �÷� ����Ͽ� ���� �����͸� �׷�ȭ �� �� ����

SELECT count(*) FROM EMPLOYEES e ;	--���̺� ��ü ������ ����
SELECT max(salary)	FROM EMPLOYEES e ; --salary �÷��� �ִ밪
SELECT min(salary)	FROM EMPLOYEES e ; --salary �÷��� �ּҰ� 
SELECT avg(salary)	FROM EMPLOYEES e ; --	��հ�
SELECT sum(salary)	FROM EMPLOYEES e ; -- �հ� 

--�� 5���� ����Լ��� JOB_ID = 'IT_PROG' ���� ���ǽ����� �Ȱ��� �����غ���
SELECT count(*) FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--5
SELECT max(salary)	FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--9000
SELECT min(SALARY)	FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--4200
SELECT avg(salary) FROM	EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--5760

--����Լ� ����� �ٸ� �÷����� ���� ��ȸ ���մϴ�.


--������ ��� : create table, insert into , select ~where ~ �⺻ ����

--���� : ��Ī(alians). �÷� �Ǵ� ���̺� �̸��� �涧 ª�� �ٿ��� ���� �̸�
SELECT *FROM EMPLOYEES e ;		--EMPLYEES ���̺��� ��Ī e
SELECT *FROM DEPARTMENTS d ;  	--DEPARTMENTS ���̺��� ��Ī d
-- �������� ���� ��Ī�� �ʿ�����ϴ�. �׷��� �������� �����ϰ� ��� �ȴ�.