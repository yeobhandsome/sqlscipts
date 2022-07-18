--제약 조건 설정은 create table, alter table 에서 합니다.


--제약 조건 1) not null :col2 컬럼은 반드시 값을 저장해야 합니다.
CREATE TABLE tbl#(
col1 varchar2(10),
col2 number(3)NOT NULL	
);

INSERT INTO tbl#(col2) VALUES (98);
INSERT INTO tbl#(col1) VALUES ('korean'); --오류: col2 컬럼의 NOT NULL 제약조건 위반
INSERT INTO tbl# VALUES ('korean',75);
INSERT INTO tbl# VALUES ('korean',80);
--확인
SELECT *FROM tbl#;
--새로운 제약조건 2) unique 를 갖는 col3

ALTER TABLE tbl# ADD col3 varchar2(10) UNIQUE; --유일한 값이어야함
--INSERT 오류가 발생하는 것은?
INSERT INTO	tbl# (col1)VALUES ('english');
INSERT INTO	tbl# (col2)VALUES (77);
INSERT INTO	tbl# (col3)VALUES ('english');
INSERT INTO tbl# (col1,col2) VALUES ('english',88);
INSERT INTO tbl# (col2,col3) VALUES(88,'science');
INSERT INTO tbl# (col1,col3) VALUES('science',88);
INSERT INTO tbl# (col1,col2,COL3) VALUES('english',89,'science');
INSERT INTO tbl# (col1,col2,COL3) VALUES('english',89,'math');
--제약조건 기본키 primary key 는 not null과 unique 제약조건입니다.

CREATE TABLE tbl2#(
	tno NUMBER (3)PRIMARY KEY,
	tid NUMBER (3)unique
);
INSERT INTO tbl2#(tno)VALUES (123);
--무결성 제약 조건 위배(기본키 컬럼은 유일한 값이면서 not null 입니다. )됩니다.
INSERT INTO tbl2#(tno)VALUES (123); --nnique
INSERT INTO tbl2#(TID)VALUES (123);-- NOT NULL 

--제약조건 4) check :컬럼값의 범위를 설정 ->age 컬럼값은 16~80
ALTER TABLE tbl2# ADD age number(3) CHECK (age BETWEEN 16 AND 80);
INSERT INTO tbl2# (tno,tid,age) VALUES (222,123,20);
INSERT INTO tbl2# (tno,tid,age) VALUES (223,123,90);
--성별 gender 컬럼 추가
ALTER TABLE tbl2# ADD gender char(1) CHECK (gender IN ('M','F'));
INSERT  INTO tbl2#(tno,gender) VALUES (224,'F');
INSERT  INTO tbl2#(tno,gender) VALUES (225,'M');
INSERT  INTO tbl2#(tno,gender) VALUES (226,'m'); --오류 : CHECK 제약조건 위반

--성별 gender 컬럼 수정
--안됩니다 ALTER TABLE tbl2# modify gender char(1) CHECK (gender IN ('M','F','m','f')); 

ALTER TABLE "TBL2#" DROP CONSTRAINTS "TBL2_CHK_GENDER2";
ALTER TABLE tbl2# ADD CONSTRAINTS tbl2_chk_gender2
CHECK (gender IN ('M','F','m','f'));
--현재 gender 컬럼의 제약조건 변경하는 경우는 다른 명령어로 해야합니다.
--alter table~drop con
INSERT  INTO tbl2#(tno,gender) VALUES (227,'m');
INSERT  INTO tbl2#(tno,gender) VALUES (228,'f');