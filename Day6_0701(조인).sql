--예제, custom_id 'mina012'이 구매한 내용 조회 : pcode 조회하고 pname은 알수 없음
SELECT pcode FROM TBL_BUY WHERE CUSTOM_ID = 'mina012';

--1. 서브쿼리(select 안에 select를 사용함)

SELECT pname FROM TBL_PRODUCT tp 
	WHERE PCODE =
	(SELECT pcode FROM tbl_buy WHERE custom_id='mina012'--내부 쿼리
						AND buy_date = '2022-2-6');	
						
SELECT pname FROM TBL_PRODUCT tp 
	WHERE PCODE IN 
	(SELECT PCODE FROM TBL_BUY tb WHERE custom_id='mina012');
	
SELECT pcode FROM tbl_buy WHERE custom_id='mina012'--내부 쿼리
						AND buy_date = '2022-2-6'
						
	SELECT pcode FROM TBL_BUY tb WHERE CUSTOM_ID ='mina012';

--서브쿼리 문제점 : 외부쿼리가 조건식을 모든행에 대해 검사할때마다 내부쿼리가 실행되므로
		--처리속도에 문제가 생깁니다. -->테이블의 조인 연산사용
SELECT *FROM TBL_PRODUCT tp ;

-- 서브쿼리 문제점 : 외부쿼리가 조건식을 모든행에 대해 검사할때만다 내부쿼리가 실행되므로
--		  처리 속도에 문제가 생깁니다. --> 테이블의 조인 연산 사용으로 개선합니다. 

-- 2. SELECT 의 테이블 JOIN : 둘 이상의 테이블(주로 참조관계의 테이블)을 연결하여 데이터를 조회하는 명령
-- 동등 조인 : 둘 이상의 테이블은 공통된 컬럼을 갖고 이 컬럼값이 '같다(=)'를 이용하여 join 합니다.
-- 형식1 : select ~~~ from 테이블1 a,테이블2 b 
--					where a.공통컬럼1=b.공통컬럼1;
--예제를 위해 상품 추가
INSERT INTO TBL_PRODUCT VALUES ('GALAXYS22','A1','갤럭시s22',555500);
	SELECT *FROM TBL_PRODUCT tp ,TBL_BUY tb 
				WHERE tp.PCODE = tb.PCODE ; --동등 조건
SELECT custno,custname,grade,price FROM member_tbl_02,money_tbl_02;
		SELECT *FROM TBL_PRODUCT tp 
			JOIN TBL_BUY tb 
			ON tp.PCODE =tb.PCODE ;
			
		--mina012가 구매한 상품명은 무엇인가 조회하기
		SELECT tp.pname FROM TBL_PRODUCT tp ,TBL_BUY tb 
			WHERE tp.PCODE =tb.PCODE AND custom_id ='mina012';
	
		
--간단 테스트
	SELECT *FROM TBL_CUSTOM tc ,TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID ;
		
		
		
SELECT *FROM  TBL_CUSTOM tc 
	JOIN TBL_BUY tb 
		ON tc.custom_id =tb.CUSTOM_ID;
	
	
	
	SELECT tc.CUSTOM_ID,NAME,pcode  FROM  TBL_CUSTOM tc ,TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID ;
	
	
	SELECT tc.CUSTOM_ID,NAME,pcode  FROM  TBL_CUSTOM tc ,TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID
		AND tc.CUSTOM_ID ='mina012';
		
		
SELECT *FROM TBL_PRODUCT tp ,
(SELECT tc.custom_id,name,email,age,REG_DATE ,pcode,quantity ,buy_date,buyno
			FROM TBL_CUSTOM tc ,TBL_BUY tb
			WHERE tc.CUSTOM_ID = tb.CUSTOM_ID) temp 
			WHERE tp.PCODE =temp.pcode;
		
		
		SELECT *FROM TBL_BUY tb ,TBL_CUSTOM tc ,TBL_PRODUCT tp 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID AND tp.PCODE =tb.PCODE ;
	
	--3 .외부 조인(outer join ): = 연산을 사용하는 조인,
	SELECT *FROM TBL_PRODUCT tp ,TBL_BUY tb 
				WHERE tp.PCODE = tb.PCODE(+) ; --동등 조건

		SELECT *FROM TBL_PRODUCT tp 
			LEFT OUTER JOIN TBL_BUY tb 
			ON tp.PCODE =tb.PCODE ;

		SELECT *FROM TBL_BUY tb 
			RIGHT OUTER JOIN TBL_PRODUCT tp 
			ON tb.PCODE =tp.PCODE ;
		
		
						