--데이터베이스 트리거 : insert, update ,delete 할 때 동작하는 프로시저
--			특정 테이블에 속해있는 객체

CREATE OR REPLACE TRIGGER secure_custom
BEFORE UPDATE OR DELETE ON tbl_custom
BEGIN 
	IF to_char(SYSDATE,'HH24:MI')BETWEEN '13:00' AND '15:00' THEN 
	reise_appliacation_error(-20000,'지금은 오후1시~3시 작업할 수 없습니다.') ;
	END IF;
END;

DELETE FROM TBL_CUSTOM  WHERE CUSTOM_ID ='twice';


--트리거에 필요한 테이블 사전에 생성.
CREATE TABLE tbl_temp
AS
SELECT *FROM tbl_buy WHERE CUSTOM_ID ='0';
--트리거 정의(생성)
CREATE OR REPLACE TRIGGER cancel_buy
AFTER DELETE ON tbl_custom
FOR EACH ROW 	--만족(적용)하는 행이 여러개 일때 :OLD UPDATE 또는 DELETE 하기 전 값, : NEW 
BEGIN 	
		--구매 취소한 데이터 tbl_temp 임시테이블에 insert 저장 : 행 트리거
	INSERT INTO tbl_temp
	VALUES 
	(:OLD.custom_id,:OLD.pcode, :OLD.quantity,:OLD,buy_date,:OLD.buyno);
	
END;

DELETE FROM tbl_buy WHERE CUSTOM_ID ='wonder';
SELECT *FROM tbl_temp;
