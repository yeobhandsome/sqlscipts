--����Ŭ�� �������� �̿��Ͽ� �ڵ����� �Ǵ� ���� ����� �̸� ���̺��� �÷� ������ INSERT �Ѵ�.
--(mysql�� �ٸ����)
CREATE SEQUENCE test_seq1;

--dual�� ����,�Լ�������� Ȯ���� �� ���Ǵ� �ӽ����̺��Դϴ�.
SELECT 2+3 FROM dual;
--�������� ���������� �����ض�.
SELECT test_seq1.nextval FROM dual;
--��ó�� nextval�� �����ؾ� currval(�������� ���簪) ���డ��.
SELECT test_seq1.currval FROM dual; --������ 9

CREATE TABLE tbl_seq(
	tno NUMBER(7),
	name nvarchar2(10)
	);
--������ ���� �÷��� �ְ� ������
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'���');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'����');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'����');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'����');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'��ȿ');
SELECT  *FROM tbl_seq;

CREATE SEQUENCE test_seq2
	INCREMENT BY 2
	START WITH 20001; --���۰�  -- MAXVALUE �� �ִ밪
							   -- MINVALUE �� �ִ밪 ���� �� ��ȯ�ϴ� �ּҰ�
	SELECT test_seq2.nextval FROM dual;
	SELECT test_seq1.currval FROM dual;