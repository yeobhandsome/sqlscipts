--오라클은 시퀀스를 이용하여 자동증가 되는 값을 만들고 이를 테이블의 컬럼 값으로 INSERT 한다.
--(mysql은 다른방법)
CREATE SEQUENCE test_seq1;

--dual은 연산,함수결과등을 확인할 때 사용되는 임시테이블입니다.
SELECT 2+3 FROM dual;
--시퀀스의 다음값으로 증가해라.
SELECT test_seq1.nextval FROM dual;
--맨처음 nextval을 실행해야 currval(시퀀스의 현재값) 실행가능.
SELECT test_seq1.currval FROM dual; --마지막 9

CREATE TABLE tbl_seq(
	tno NUMBER(7),
	name nvarchar2(10)
	);
--순번에 따라서 컬럼값 주고 싶을때
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'모모');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'쯔위');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'나연');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'다현');
INSERT INTO tbl_seq(tno,name) VALUES(test_seq1.nextval,'지효');
SELECT  *FROM tbl_seq;

CREATE SEQUENCE test_seq2
	INCREMENT BY 2
	START WITH 20001; --시작값  -- MAXVALUE 는 최대값
							   -- MINVALUE 는 최대값 도달 후 순환하는 최소값
	SELECT test_seq2.nextval FROM dual;
	SELECT test_seq1.currval FROM dual;