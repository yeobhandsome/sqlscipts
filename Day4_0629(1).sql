--DDL : CREATE ALTER drop ,TRUNCATE (����� user,table )
--dml : insert select UPDATE delete

drop table scores;
DROP TABLE students;

--UPDATE ���̺�� SET �÷��� =��,�÷��� =��,�÷��� =�� ,.... WHERE �����÷� �����
--where ���� �÷� �����
--delete from ���̺�� where �����÷������
--���� ���� : UPDATE �� delete �� where ���� ����ϴ� ���� ������ ����
--��� �����͸� �����Ҷ��� DELETE ��ſ� truncate ����մϴ�.
-- truncate �� ������ ���(rollback) �� �� ���� ������ DDL�� ���մϴ�
--update ,delete,select ���� where�� �÷��� �⺻Ű �÷��̸�
--����Ǵ� ��ϱ��?
UPDATE STUDENTS SET AGE = 18 WHERE id=2021001;
SELECT *FROM STUDENTS s ;
--rollback, commit �׽�Ʈ( �޴����� Ʈ����� ��带 manual�� �����մϴ�.)
UPDATE STUDENTS SET adress ='���ϱ�',age=16 WHERE id =2021001;
COMMIT;
ROLLBACK;
DELETE FROM SCORES;
DELETE FROM scores WHERE id=2019019;
SELECT *FROM SCORES ;
SELECT *FROM STUDENTS ;
----------------------------�����
--Ʈ����� �������

DELETE FROM SCORES ;
ROLLBACK;
SELECT *FROM SCORES;
DELETE FROM SCORES WHERE id=2019019;
SELECT *FROM SCORES ;
ROLLBACK;
SELECT *FROM SCORES ;

--TRUNCATE table SCORES ; �ѹ�Ұ�


/*insert
 * delete
 * commit
 * update
 * delete
 * rollback
 * insert
 * insert
 * rollback
 * insert
 * update
 * commit
 * 
 * 
 */

