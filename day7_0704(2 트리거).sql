--�����ͺ��̽� Ʈ���� : insert, update ,delete �� �� �����ϴ� ���ν���
--			Ư�� ���̺� �����ִ� ��ü

CREATE OR REPLACE TRIGGER secure_custom
BEFORE UPDATE OR DELETE ON tbl_custom
BEGIN 
	IF to_char(SYSDATE,'HH24:MI')BETWEEN '13:00' AND '15:00' THEN 
	reise_appliacation_error(-20000,'������ ����1��~3�� �۾��� �� �����ϴ�.') ;
	END IF;
END;

DELETE FROM TBL_CUSTOM  WHERE CUSTOM_ID ='twice';


--Ʈ���ſ� �ʿ��� ���̺� ������ ����.
CREATE TABLE tbl_temp
AS
SELECT *FROM tbl_buy WHERE CUSTOM_ID ='0';
--Ʈ���� ����(����)
CREATE OR REPLACE TRIGGER cancel_buy
AFTER DELETE ON tbl_custom
FOR EACH ROW 	--����(����)�ϴ� ���� ������ �϶� :OLD UPDATE �Ǵ� DELETE �ϱ� �� ��, : NEW 
BEGIN 	
		--���� ����� ������ tbl_temp �ӽ����̺� insert ���� : �� Ʈ����
	INSERT INTO tbl_temp
	VALUES 
	(:OLD.custom_id,:OLD.pcode, :OLD.quantity,:OLD,buy_date,:OLD.buyno);
	
END;

DELETE FROM tbl_buy WHERE CUSTOM_ID ='wonder';
SELECT *FROM tbl_temp;
