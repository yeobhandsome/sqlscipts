--데이터 가져오기
--cvs 형식의 파일을 테이블로 변환할 수 있는 기능
--엑셀 또는 메모장에서 열기 가능.
-- 주의 사항: 자동으로 생성되는 테이블 컬럼의 크기가 데이터보다 작지 않게 또는 적정한 타입으로 설정해야함.

SELECT *FROM  ANIMAL_INS ai ORDER BY ANIMAL_ID ;

--데이터 내보내기 (export)
--		현재 데이터베이스의 테이블 구조와 행 들을 파일로 내보내기 합니다.
--DDL 테이블,시퀀스 생성 명령문과 insert 명령을 만들어준다.