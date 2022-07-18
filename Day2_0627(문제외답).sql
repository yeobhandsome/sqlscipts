/*
1. hire_date가 2006년 1월 1일 이전인 직원의 이름,성,이메일

2. lastname이 'Jones' 인 직원의 모든 컬럼

3. salary 가 5000 이상인 직원의 이름,성,JOB_ID 조회

4. JOB_ID 에 ACCOUNT 가 들어가는 직원의 이름,성,salary 조회

5. 부서_ID 가 50 ,60, 80,90 인 직원의 직원_ID, 이름,성 조회
*/
--이준엽--
--1
SELECT LAST_NAME, first_name, EMAIL FROM EMPLOYEES WHERE HIRE_DATE <'2006-01-01';
--2
SELECT *FROM EMPLOYEES WHERE LAST_NAME ='Jones';
--대소문자 검사는 조건식에서 주의해야합니다.
SELECT *FROM EMPLOYEES WHERE UPPER(LAST_NAME)	='JONES'; 
SELECT *FROM EMPLOYEES WHERE LOWER(LAST_NAME)	='jones';
--3
SELECT LAST_NAME ,FIRST_NAME ,JOB_ID  FROM EMPLOYEES WHERE SALARY>=5000;
--4
SELECT LAST_NAME ,FIRST_NAME ,SALARY  FROM EMPLOYEES WHERE JOB_ID LIKE '%ACCOUNT%';
--5
SELECT EMPLOYEE_ID , FIRST_NAME ,LAST_NAME FROM EMPLOYEES WHERE DEPARTMENT_ID in(50,60,80,90);

--통계 함수 : count, avg,max,min .통계함수는 그룹함수라고도 합니다.
		--	해당 함수 결과값을 구하기 위해 특정 컬럼 사용하여 여러 데이터를 그룹화 한 후 실행

SELECT count(*) FROM EMPLOYEES e ;	--테이블 전체 데이터 갯수
SELECT max(salary)	FROM EMPLOYEES e ; --salary 컬럼의 최대값
SELECT min(salary)	FROM EMPLOYEES e ; --salary 컬럼의 최소값 
SELECT avg(salary)	FROM EMPLOYEES e ; --	평균값
SELECT sum(salary)	FROM EMPLOYEES e ; -- 합계 

--위 5개의 통계함수를 JOB_ID = 'IT_PROG' 값을 조건식으로 똑같이 실행해보기
SELECT count(*) FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--5
SELECT max(salary)	FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--9000
SELECT min(SALARY)	FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--4200
SELECT avg(salary) FROM	EMPLOYEES e WHERE JOB_ID ='IT_PROG';	--5760

--통계함수 결과는 다른 컬럼값과 같이 조회 못합니다.


--오늘의 요약 : create table, insert into , select ~where ~ 기본 형식

--참고 : 별칭(alians). 컬럼 또는 테이블 이름이 길때 짧게 줄여서 쓰는 이름
SELECT *FROM EMPLOYEES e ;		--EMPLYEES 테이블의 별칭 e
SELECT *FROM DEPARTMENTS d ;  	--DEPARTMENTS 테이블의 별칭 d
-- 위에서는 굳이 별칭이 필요없습니다. 그러나 언젠가는 유용하게 사용 된다.