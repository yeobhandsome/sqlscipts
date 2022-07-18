--PL/SQL : procedure(절차,순서) Language, 기존의 단순한 sql이 확장된 언어
--	변수,제어문을 사용하여 프로그래밍언어와 같이 sql 실행의 흐름을 제어

DECLARE   -- 변수선언부  
	--vcustomid varchar2(20);
	--vage number(3,0);
	vname tbl_custom.name %TYPE;
	vage tbl_custom.age %TYPE;
BEGIN		--프로시저 시작
-- 프로시저 내부에는 주로 DML 명령문들을 작성.(함께 실행해야할 여러 SQL : 트랜잭션)
	SELECT name,age 
	INTO vname , vage	-- 프로시저 구문: 검색결과를 변수에 저장
	FROM "TBL_CUSTOM" tc 
	WHERE CUSTOM_ID ='mina012';		-- 1개 행만 결과 조회되는 조건
	
-- 변수값을 콘솔에 출력(프로시저 명령)
	DBMS_OUTPUT.PUT_LINE('고객이름 : ' || vname);
	DBMS_OUTPUT.PUT_LINE('고객나이 : ' || vage);
	EXCEPTION		-- 예외(오류)처리
	WHEN no_data_found THEN   -- 예외 이름은 다양합니다. 
		DBMS_OUTPUT.PUT_LINE('찾는 데이터가 없습니다.');
END;

--오라클 객체 프로시저 생성하기 : 검색할 값을 매개 변수로 전달하기

CREATE OR REPLACE PROCEDURE  search_custom(
	custom_id IN tbl_custom.CUSTOM_ID  %TYPE 
)
IS 
--일반 변수 선언
	vname tbl_custom.name %TYPE;
	vage tbl_custom.age %TYPE;

BEGIN 
		SELECT name,age 
	INTO vname , vage	-- 프로시저 구문: 검색결과를 변수에 저장
	FROM "TBL_CUSTOM" tc 
	WHERE CUSTOM_ID ='mina012';		-- 1개 행만 결과 조회되는 조건
	DBMS_OUTPUT.PUT_LINE('고객이름 : ' || vname);
	DBMS_OUTPUT.PUT_LINE('고객나이 : ' || vage);
	EXCEPTION		-- 예외(오류)처리
	WHEN no_data_found THEN   -- 예외 이름은 다양합니다. `
		DBMS_OUTPUT.PUT_LINE('찾는 데이터가 없습니다.');
	c_name : ='no match';
END;
--출력(리턴값)이 있는 프로시저 실행: 출력값 저장을 위한 변수가 필요합니다.

DECLARE 
 	vname tbl_custom.name %TYPE;
 
 BEGIN
	 	search_custom2('momo',vname);
	 	DBMS_OUTPUT.PUT_LINE('고객이름 : ' || vname);
 
 END;

--function 오라클 객체와 비교
--오라클 함수: upper, lower,decode, round ,to_date
