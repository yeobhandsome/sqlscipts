--���� ���� ������ create table, alter table ���� �մϴ�.


--���� ���� 1) not null :col2 �÷��� �ݵ�� ���� �����ؾ� �մϴ�.
CREATE TABLE tbl#(
col1 varchar2(10),
col2 number(3)NOT NULL	
);

INSERT INTO tbl#(col2) VALUES (98);
INSERT INTO tbl#(col1) VALUES ('korean'); --����: col2 �÷��� NOT NULL �������� ����
INSERT INTO tbl# VALUES ('korean',75);
INSERT INTO tbl# VALUES ('korean',80);
--Ȯ��
SELECT *FROM tbl#;
--���ο� �������� 2) unique �� ���� col3

ALTER TABLE tbl# ADD col3 varchar2(10) UNIQUE; --������ ���̾����
--INSERT ������ �߻��ϴ� ����?
INSERT INTO	tbl# (col1)VALUES ('english');
INSERT INTO	tbl# (col2)VALUES (77);
INSERT INTO	tbl# (col3)VALUES ('english');
INSERT INTO tbl# (col1,col2) VALUES ('english',88);
INSERT INTO tbl# (col2,col3) VALUES(88,'science');
INSERT INTO tbl# (col1,col3) VALUES('science',88);
INSERT INTO tbl# (col1,col2,COL3) VALUES('english',89,'science');
INSERT INTO tbl# (col1,col2,COL3) VALUES('english',89,'math');
--�������� �⺻Ű primary key �� not null�� unique ���������Դϴ�.

CREATE TABLE tbl2#(
	tno NUMBER (3)PRIMARY KEY,
	tid NUMBER (3)unique
);
INSERT INTO tbl2#(tno)VALUES (123);
--���Ἲ ���� ���� ����(�⺻Ű �÷��� ������ ���̸鼭 not null �Դϴ�. )�˴ϴ�.
INSERT INTO tbl2#(tno)VALUES (123); --nnique
INSERT INTO tbl2#(TID)VALUES (123);-- NOT NULL 

--�������� 4) check :�÷����� ������ ���� ->age �÷����� 16~80
ALTER TABLE tbl2# ADD age number(3) CHECK (age BETWEEN 16 AND 80);
INSERT INTO tbl2# (tno,tid,age) VALUES (222,123,20);
INSERT INTO tbl2# (tno,tid,age) VALUES (223,123,90);
--���� gender �÷� �߰�
ALTER TABLE tbl2# ADD gender char(1) CHECK (gender IN ('M','F'));
INSERT  INTO tbl2#(tno,gender) VALUES (224,'F');
INSERT  INTO tbl2#(tno,gender) VALUES (225,'M');
INSERT  INTO tbl2#(tno,gender) VALUES (226,'m'); --���� : CHECK �������� ����

--���� gender �÷� ����
--�ȵ˴ϴ� ALTER TABLE tbl2# modify gender char(1) CHECK (gender IN ('M','F','m','f')); 

ALTER TABLE "TBL2#" DROP CONSTRAINTS "TBL2_CHK_GENDER2";
ALTER TABLE tbl2# ADD CONSTRAINTS tbl2_chk_gender2
CHECK (gender IN ('M','F','m','f'));
--���� gender �÷��� �������� �����ϴ� ���� �ٸ� ��ɾ�� �ؾ��մϴ�.
--alter table~drop con
INSERT  INTO tbl2#(tno,gender) VALUES (227,'m');
INSERT  INTO tbl2#(tno,gender) VALUES (228,'f');