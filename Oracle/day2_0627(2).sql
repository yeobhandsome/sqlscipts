--���ڿ� Ÿ��
--char(����) :�������� , ������ ����Ʈ
--varchar(����): ����Ŭ���� ���������� ������� �ʴ� �����ڷ���.
--varchar2(����):������ ���� ���� ����Ʈ,���̴� �ִ� �����̰� ������ �޸𸮴� ������
--				�ִ� 2000����Ʈ�Դϴ�. utf-8���ڵ����� �ѱ��� 3����Ʈ

CREATE TABLE tbl_string(
acol char(10),	--10�� ����Ʈ ����
bcol varchar2(10),--10����Ʈ ��������
ccol nchar(10), --10�� ���� ��������
dcol nvarchar2(10)	---10�� ���� ��������
);

INSERT  INTO tbl_string(ACOL)values ('abcdefghij');
INSERT  INTO tbl_string(ACOL)values ('abcdef');
INSERT  INTO tbl_string(ACOL)values ('abcdefghijkim'); --���� ���� �ʰ� 

--insert Ȯ��
SELECT *FROM tbl_string;
--�ѱ� Ȯ��
INSERT INTO tbl_string(ACOL) values('������');	--���� 1��
INSERT INTO tbl_string(ACOL) values('�����ٶ�');	--���� 12, �ִ밪 :10
INSERT INTO tbl_string(ACOL) values('����');		--���� 4�� �߰�

--bcol�� �������� 10����Ʈ
INSERT  INTO tbl_string(bCOL)values ('abcdefghij');
INSERT  INTO tbl_string(bCOL)values ('abcdef');		--�����߰� ����
INSERT  INTO tbl_string(bCOL)values ('abcdefghijkim'); --���� ���� �ʰ� 

--insert Ȯ��
SELECT *FROM tbl_string;
--�ѱ� Ȯ��
INSERT INTO tbl_string(bCOL) values('������');	--������ �߰� ����
INSERT INTO tbl_string(bCOL) values('�����ٶ�');	--���� 12, �ִ밪 :10
INSERT INTO tbl_string(bCOL) values('����');		--���� 4�� �߰�

--char varchar2�� ����Ʈ ����. nchar�� nvarchar2�� ���ڰ��� ���� 
INSERT  INTO tbl_string(CCOL )values ('abcdefghij');
INSERT  INTO tbl_string(cCOL)values ('abcdef');		--�����߰� ����
INSERT  INTO tbl_string(cCOL)values ('abcdefghijkim'); --���� ���� �ʰ� 

--nchar
INSERT INTO tbl_string(cCOL) values('������');	-
INSERT INTO tbl_string(cCOL) values('�����ٶ�');	--���� 12, �ִ밪 :10
INSERT INTO tbl_string(cCOL) values('����');		--���� 4�� �߰�


INSERT INTO tbl_string(dCOL) values('������');	--������ �߰� ����
INSERT INTO tbl_string(dCOL) values('�����ٶ�');	--���� 12, �ִ밪 :10
INSERT INTO tbl_string(dCOL) values('����');		--���� 4�� �߰�