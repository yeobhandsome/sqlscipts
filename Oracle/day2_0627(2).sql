--문자열 타입
--char(길이) :고정길이 , 단위는 바이트
--varchar(길이): 오라클에서 존재하지만 사용하지 않는 예비자료형.
--varchar2(길이):가변형 길이 단위 바이트,길이는 최대 길이이고 실제로 메모리는 데이터
--				최대 2000바이트입니다. utf-8인코딩에서 한글은 3바이트

CREATE TABLE tbl_string(
acol char(10),	--10개 바이트 고정
bcol varchar2(10),--10바이트 가변길이
ccol nchar(10), --10개 문자 고정길이
dcol nvarchar2(10)	---10개 문자 가변길이
);

INSERT  INTO tbl_string(ACOL)values ('abcdefghij');
INSERT  INTO tbl_string(ACOL)values ('abcdef');
INSERT  INTO tbl_string(ACOL)values ('abcdefghijkim'); --오류 길이 초과 

--insert 확인
SELECT *FROM tbl_string;
--한글 확인
INSERT INTO tbl_string(ACOL) values('가나다');	--공백 1개
INSERT INTO tbl_string(ACOL) values('가나다라');	--실제 12, 최대값 :10
INSERT INTO tbl_string(ACOL) values('가나');		--공백 4개 추가

--bcol은 가변길이 10바이트
INSERT  INTO tbl_string(bCOL)values ('abcdefghij');
INSERT  INTO tbl_string(bCOL)values ('abcdef');		--공백추가 없음
INSERT  INTO tbl_string(bCOL)values ('abcdefghijkim'); --오류 길이 초과 

--insert 확인
SELECT *FROM tbl_string;
--한글 확인
INSERT INTO tbl_string(bCOL) values('가나다');	--ㄱ공북 추가 없음
INSERT INTO tbl_string(bCOL) values('가나다라');	--실제 12, 최대값 :10
INSERT INTO tbl_string(bCOL) values('가나');		--공백 4개 추가

--char varchar2는 바이트 단위. nchar과 nvarchar2는 문자개수 단위 
INSERT  INTO tbl_string(CCOL )values ('abcdefghij');
INSERT  INTO tbl_string(cCOL)values ('abcdef');		--공백추가 없음
INSERT  INTO tbl_string(cCOL)values ('abcdefghijkim'); --오류 길이 초과 

--nchar
INSERT INTO tbl_string(cCOL) values('가나다');	-
INSERT INTO tbl_string(cCOL) values('가나다라');	--실제 12, 최대값 :10
INSERT INTO tbl_string(cCOL) values('가나');		--공백 4개 추가


INSERT INTO tbl_string(dCOL) values('가나다');	--ㄱ공북 추가 없음
INSERT INTO tbl_string(dCOL) values('가나다라');	--실제 12, 최대값 :10
INSERT INTO tbl_string(dCOL) values('가나');		--공백 4개 추가