CREATE TABLE tbl_custom(
custom_id varchar2(20) PRIMARY KEY,
name nvarchar2(20)NOT NULL,
email varchar2(20),
age number(3),
reg_date DATE default sysdate 
);

CREATE TABLE tbl_product(
	pcode varchar2(20) PRIMARY KEY,
	category char(2) NOT NULL ,
	pname nvarchar2 (20) NOT NULL,
	price NUMBER (9) NOT NULL
	);
CREATE TABLE tbl_buy(
custom_id varchar2(20) NOT NULL,
pcode varchar2(20)NOT NULL,
quantity NUMBER(5)NOT NULL, 
buy_date DATE default sysdate
);
INSERT INTO tbl_custom 
VALUES ('mina012', '김미나', 'kimm@gmail.com', 20, to_date('2022-03-10 14:23:25','YYYY-MM-DD HH24:MI:ss'));
INSERT INTO tbl_custom 
VALUES ('hongGD', '홍길동', 'gil@korea.com', 32, to_date('2021-10-21 00:00','YYYY-MM-DD HH24:MI'));
INSERT INTO tbl_custom 
VALUES ('twice', '박모모', 'momo@daum.net', 29, to_date('2021-12-25 00:00','YYYY-MM-DD HH24:MI'));
INSERT INTO tbl_custom 
VALUES ('wonder', '이나나', 'lee@naver.com', 40, sysdate);
INSERT INTO tbl_product values('IPAD011', 'A1', '아이패드10', 888000);
INSERT INTO tbl_product values('DOWON123a', 'B1', '동원참치선물세트', 54000);
INSERT INTO tbl_product values('dk_143', 'A2', '모션데스크', 234500);
INSERT  INTO tbl_buy VALUES ('mina012','IPAD011',1,to_date('2022-02-06 00:00','YYYY-MM-DD HH24:MI'));
INSERT  INTO tbl_buy VALUES ('hongGD','IPAD011',2,to_date('2022-06-29 20:37:47','YYYY-MM-DD HH24:MI:SS'));
INSERT  INTO tbl_buy VALUES ('wonder','DOWON123a',3,to_date('2022-02-06 00:00','YYYY-MM-DD HH24:MI'));
INSERT  INTO tbl_buy VALUES ('mina012','dk_143',1,sysdate);
INSERT  INTO tbl_buy VALUES ('twice','DOWON123a',2,to_date('2022-02-09 08:49:55','YYYY-MM-DD HH24:MI:ss'));
ALTER TABLE tbl_buy ADD buyno number(8);
UPDATE tbl_buy SET buyno = 1001 WHERE CUSTOM_ID = 'mina012' AND PCODE = 'IPAD011';
UPDATE tbl_buy SET buyno = 1002 WHERE CUSTOM_ID = 'hongGD';
UPDATE tbl_buy SET buyno = 1003 WHERE CUSTOM_ID = 'wonder';
UPDATE tbl_buy SET buyno = 1004 WHERE CUSTOM_ID = 'mina012' AND PCODE = 'dk_143';
UPDATE tbl_buy SET buyno = 1005 WHERE CUSTOM_ID = 'twice';
ALTER TABLE TBL_BUY MODIFY buyno PRIMARY KEY;
ALTER TABLE TBL_BUY MODIFY FOREIGN KEY(custom_id) REFERENCES tbl_custom(custom_id);
ALTER TABLE TBL_BUY MODIFY FOREIGN KEY(pcode) REFERENCES tbl_product(pcode);
CREATE SEQUENCE tblbuy_seq
	START WITH 1006;

INSERT INTO tbl_buy 
values('wonder', 'IPAD011', 1, to_date('2022-05-15 00:00:00','YYYY-MM-DD HH24:MI:ss'), tblbuy_seq.nextval);
SELECT * FROM TBL_CUSTOM  WHERE age>=30;
SELECT email FROM TBL_CUSTOM  WHERE CUSTOM_ID = 'twice';
SELECT pname FROM TBL_PRODUCT  WHERE CATEGORY = 'A2';
SELECT MAX(price) FROM TBL_PRODUCT ;
SELECT sum(quantity) FROM TBL_BUY  WHERE pcode = 'IPAD011';
SELECT * FROM TBL_BUY WHERE CUSTOM_ID = 'mina012';
SELECT * FROM TBL_BUY WHERE pcode LIKE '%0%';
SELECT * FROM TBL_BUY WHERE lower(pcode) LIKE '%on%';


