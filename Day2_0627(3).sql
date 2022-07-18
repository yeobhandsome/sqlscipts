--데이터 만드는 create tabel, 데이터 형식 테스트
----------------1. DML   INSERT 형식(데이터추가)--------------------------
CREATE TABLE TBL_MEMBER(
mon NUMBER,
name nvarchar2(50),
email varchar2(100),
join_date DATE);
--모든 컬럼에 데이터를 저장하는 형식 (컬럼명 생략)
INSERT INTO TBL_MEMBERs VALUE(1,'김모모','momo@naver.com','2022-03-02');
--일부 컬럼에 데이터를 저장하는 형식
INSERT INTO TBL_MEMBERs (mon,name)		--데이터 저장될 컬럼명 나열
VALUES(2,'이나나');
--------2.DML SELECT 형식(데이터 행조회)
----select 조회할 컬럼 목록 from 테이블 이름 [WHERE 조건식] ; 모든 컬럼은 *로 대체
SELECT name FROM TBL_MEMBER;
SELECT name,JOIN_date FROM TBL_MEMBER;
SELECT *FROM TBL_MEMBER;
SELECT *FROM TBL_MEMBER WHERE name='최다현';
SELECT *FROM TBL_MEMBER WHERE join_date >'2022-03-03';
--null값 조회
SELECT *FROM TBL_MEMBER WHERE email IS NULL;
SELECT *FROM TBL_MEMBER WHERE email IS NOT NULL;
--문자열의 부부검색
SELECT *FROM TBL_MEMBER WHERE name LIKE '%다현';
SELECT *FROM TBL_MEMBER WHERE name LIKE '다현%';
SELECT *FROM TBL_MEMBER WHERE name LIKE '%다현%';
---or 연산 : mno값이 1 또는 2 또는 4
SELECT mno FROM TBL_MEMBER   WHERE mno =1 OR mno =2 OR mno =4;
-- 			오라클의 or 대체 연산자 : IN (동일한 칼럼에서만)	
SELECT *FROM  TBL_MEMBER WHERE mno NOT IN (3);
SELECT *FROM  TBL_MEMBER WHERE mno NOT IN (1,2,4);
SELECT *FROM  TBL_MEMBER WHERE name NOT IN ('김모모','최다현');



--처음 만든 테이블 구조 중 mno 컬럼을 5로 축소 변경
--					축소 변경할때는 mno 컬럼에 값이 없어야합니다.
SELECT *FROM TBL_MEMBER;

------date 형식--------------------------------------------------------------
INSERT INTO TBL_MEMBER 
VALUES(3,'최다현','dahy@naver.com',to_date('2022-03-04 16:47','YYYY-MM-DD HH24:MI'));

--현재 시스템의 날짜와 시간 : sysdate 함수
INSERT INTO TBL_MEMBER VALUES (4,'쯔위','aaa@gmail.com',sysdate);
SELECT *FROM TBL_MEMBER;

