--DDL : CREATE ALTER drop ,TRUNCATE (대상은 user,table )
--dml : insert select UPDATE delete

drop table scores;
DROP TABLE students;

--UPDATE 테이블명 SET 컬럼명 =값,컬럼명 =값,컬럼명 =값 ,.... WHERE 조건컬럼 관계식
--where 조건 컬럼 관계식
--delete from 테이블명 where 조건컬럼관계식
--주의 할점 : UPDATE 와 delete 는 where 없이 사용하는 것은 위험한 동작
--모든 데이터를 삭제할때는 DELETE 대신에 truncate 사용합니다.
-- truncate 는 실행을 취소(rollback) 할 수 없기 떄문에 DDL에 속합니다
--update ,delete,select 에서 where의 컬럼이 기본키 컬럼이면
--실행되는 몇개일까요?
UPDATE STUDENTS SET AGE = 18 WHERE id=2021001;
SELECT *FROM STUDENTS s ;
--rollback, commit 테스트( 메뉴에서 트랜잭션 모드를 manual로 변경합니다.)
UPDATE STUDENTS SET adress ='성북구',age=16 WHERE id =2021001;
COMMIT;
ROLLBACK;
DELETE FROM SCORES;
DELETE FROM scores WHERE id=2019019;
SELECT *FROM SCORES ;
SELECT *FROM STUDENTS ;
----------------------------여기까
--트랜잭션 관리명령

DELETE FROM SCORES ;
ROLLBACK;
SELECT *FROM SCORES;
DELETE FROM SCORES WHERE id=2019019;
SELECT *FROM SCORES ;
ROLLBACK;
SELECT *FROM SCORES ;

--TRUNCATE table SCORES ; 롤백불가


/*insert
 * delete
 * commit
 * update
 * delete
 * rollback
 * insert
 * insert
 * rollback
 * insert
 * update
 * commit
 * 
 * 
 */

