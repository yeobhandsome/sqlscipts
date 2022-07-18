--주제 : 행을 그룹화 합니다. 사용순서는 아래처럼
--SELECT 문
--WHERE  그룹화 하기 전에 사용할 조건식
--group BY 그룹화에 사용할 컬럼명
--HAVING 그룹화 결과에 대한 조건식
--order BY 그룹화 결과 정렬할 컬럼명과 방식

SELECT PCODE,count(*) FROM TBL_BUY tb GROUP BY pcode;


SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy# tb
           GROUP BY PCODE 
           ORDER BY cnt;

--그룹화 후에 수량합계가 3 이상인 조회          
          SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy tb
           GROUP BY PCODE 
           HAVING sum(QUANTITY)>=3
           ORDER BY cnt;
--day 02 참고
--구매날짜 2022-04-01 이후인 것만 그룹하여 조회
SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy tb
           GROUP BY PCODE 
           HAVING sum(QUANTITY)>=3
           ORDER BY cnt;
          
          SELECT PCODE,count(*)cnt,sum(QUANTITY) total
           FROM  tbl_buy tb
			WHERE BUY_DATE >='2022-04-01'
           GROUP BY PCODE 
          ORDER BY cnt;
          
          
          