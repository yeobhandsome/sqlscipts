--데이터 타입 number 연습 테이블
--number : 자바에서 정수,실수 타입 해당.
--			number(정밀도,소수점 이하자리수)

--이미 있는 테이블 제거 : ㄱ=꼭 필요할 떄 주의해서 실행하기
DROP TABLE TBL_NUMBER;

CREATE TABLE tbl_number(
	col1 NUMBER,		--정밀도 지정 안하면 최대 38자리
	col2 number(5),		--정수로 최대5자리 (소수점 이하 없음)
	col3 number(7,2),	--전체 7자리수,소수점이하 2자리
	col4 NUMBER (2,5) 	--소수점이하 5자리, 유효숫자
);
--유효 숫자 : 
--정상실행값 테스트 1
INSERT INTO tbl_number 
VALUES (1234567,12345,12345.67,0.00012);

--오류 테스트1		2번째 값 자리수 초과
INSERT INTO TBL_NUMBER 
VALUES (123456789,123456,12345.67,0.00012);

--정상 테스트2	:  소수점 이하 자리수 초과 /
INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,12345.6789,0.00012);

--정상 테스트3	:  소수점 이하 자리수 초과
INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,12345,0.00012);

--정상 테스트3	:  소수점 이하 자리수 초과	//소수점이하 .22 
INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,123456,0.00012);

--col4 number (2,5)	-- 소수점이하 5자리 고정, 0아닌 유효숫자 최대 2자리
--정상 테스트 4
INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,12345,0.00002);

INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,12345,0.0002);
--0이 3개여야 함..

INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,12345,0.0012);

INSERT INTO TBL_NUMBER 
VALUES (123456789,1234,12345,0.000126);

--위에 4가지 예시 결혼 : number(2,5)에서 정밀도 < 소수점이하 자리수,
--				2-5 = -3 소수점 이하 유효0이 3개 이상이어야 합니다.

SELECT *FROM TBL_NUMBER ;
