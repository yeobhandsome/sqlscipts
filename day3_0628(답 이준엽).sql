--작성자 이준엽

CREATE TABLE students(
id char(7) PRIMARY KEY,
name nchar(5) NOT NULL,
age number(3),
adress nchar(5)
);

INSERT INTO STUDENTS VALUES (2021001,'김모모',16,'서초구');
INSERT INTO STUDENTS VALUES (2019019,'강다현',16,'강남구');

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
INSERT  INTO scores VALUES (2021001,'국어',89,'이나연','2022_1');
INSERT  INTO scores VALUES (2021001,'영어',78,'김길동','2022_1');
INSERT  INTO scores VALUES (2021001,'과학',67,'박세리','2021_2');
INSERT  INTO scores VALUES (2019019,'국어',92,'이나연','2019_2');
INSERT  INTO scores VALUES (2019019,'영어',85,'박지성','2019_2');
INSERT  INTO scores VALUES (2019019,'과학',88,'박세리','2020_1');

