--�ۼ��� ���ؿ�

CREATE TABLE students(
id char(7) PRIMARY KEY,
name nchar(5) NOT NULL,
age number(3),
adress nchar(5)
);

INSERT INTO STUDENTS VALUES (2021001,'����',16,'���ʱ�');
INSERT INTO STUDENTS VALUES (2019019,'������',16,'������');

CREATE TABLE scores(
id char(7) NOT NULL,
subject nchar(5) NOT NULL,
score NUMBER NOT NULL,
teacher nchar(5) NOT NULL,
whens char(6) NOT NULL,

);
ALTER TABLE scores
	ADD CONSTRAINTS pk_scores PRIMARY KEY (id,subject);
ALTER TABLE SCORES 
	ADD CONSTRAINTS fk_scores FOREIGN KEY (id)
	REFERENCES students(id);

--alter table ~add
INSERT  INTO scores VALUES (2021001,'����',89,'�̳���','2022_1');
INSERT  INTO scores VALUES (2021001,'����',78,'��浿','2022_1');
INSERT  INTO scores VALUES (2021001,'����',67,'�ڼ���','2021_2');
INSERT  INTO scores VALUES (2019019,'����',92,'�̳���','2019_2');
INSERT  INTO scores VALUES (2019019,'����',85,'������','2019_2');
INSERT  INTO scores VALUES (2019019,'����',88,'�ڼ���','2020_1');

