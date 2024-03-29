--조인과 group BY 포함해서 select로 검색하는 문제 10개 만들기
--group by 결과로도 조인을 할 수 있습니다.

SELECT *FROM EMPLOYEES e ,JOBS j 
		WHERE e.JOB_ID  =j.JOB_ID ;
	

SELECT *FROM EMPLOYEES e 
LEFT OUTER JOIN JOBS j 
ON e.JOB_ID =j.JOB_ID ;

SELECT end_date FROM EMPLOYEES e ,JOBS j ,JOB_HISTORY jh 
WHERE e.EMPLOYEE_ID ,j.JOB_ID AND e.EMPLOYEE_ID =jh.EMPLOYEE_ID ;

		SELECT job_id,COUNT(*) FROM EMPLOYEES e GROUP BY JOB_ID ;
		
	SELECT FIRST_NAME ,sum(SALARY) total
	FROM EMPLOYEES e
	GROUP BY FIRST_NAME
	HAVING sum(SALARY)>=10000;
	
SELECT job_id , COUNT(*)
FROM JOBS j 
WHERE max_salary>= 20000
GROUP BY job_id;

SELECT EMAIL ,SUM(SALARY)cnt
FROM EMPLOYEES e 
WHERE HIRE_DATE <= '2005-01-01'
GROUP BY EMAIL  
ORDER BY cnt;

SELECT FIRST_NAME,PHONE_NUMBER ,max(LAST_NAME)cn
FROM EMPLOYEES e 
WHERE PHONE_NUMBER LIKE  '%515%'
GROUP BY FIRST_NAME,PHONE_NUMBER  
ORDER BY cn;

SELECT city ,COUNTRY_ID 
FROM LOCATIONS l 
WHERE COUNTRY_ID ='US'
GROUP BY city,COUNTRY_ID ;

SELECT job_title FROM JOBS j WHERE MIN_SALARY >='10000';
SELECT *FROM JOBS j WHERE JOB_TITLE ='programmer';
	SELECT *FROM JOBS j WHERE UPPER(JOB_TITLE)='PROGRAMMER'; 
	SELECT *FROM JOBS j WHERE LOWER(JOB_TITLE)='programmer';
	

SELECT max(max_salary) FROM JOBS j ;
SELECT avg(salary) FROM EMPLOYEES e ;
SELECT avg(salary) FROM EMPLOYEES e WHERE JOB_ID ='IT_PROG';

SELECT COUNT(*)FROM EMPLOYEES e JOIN DEPARTMENTS d ON e.DEPARTMENT_ID =d.DEPARTMENT_ID 
AND department_name ='sales';

SELECT *FROM DEPARTMENTS d JOIN 
 (SELECT DEPARTMENT_ID,avg(salary) FROM EMPLOYEES e GROUP BY DEPARTMENT_ID )tavg
 ON d.DEPARTMENT_ID =tavg.department_id;
--rownum은 가상의 컬럼으로 조회 

