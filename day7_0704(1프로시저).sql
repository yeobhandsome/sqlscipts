--PL/SQL : procedure(����,����) Language, ������ �ܼ��� sql�� Ȯ��� ���
--	����,����� ����Ͽ� ���α׷��־��� ���� sql ������ �帧�� ����

DECLARE   -- ���������  
	--vcustomid varchar2(20);
	--vage number(3,0);
	vname tbl_custom.name %TYPE;
	vage tbl_custom.age %TYPE;
BEGIN		--���ν��� ����
-- ���ν��� ���ο��� �ַ� DML ��ɹ����� �ۼ�.(�Բ� �����ؾ��� ���� SQL : Ʈ�����)
	SELECT name,age 
	INTO vname , vage	-- ���ν��� ����: �˻������ ������ ����
	FROM "TBL_CUSTOM" tc 
	WHERE CUSTOM_ID ='mina012';		-- 1�� �ุ ��� ��ȸ�Ǵ� ����
	
-- �������� �ֿܼ� ���(���ν��� ���)
	DBMS_OUTPUT.PUT_LINE('���̸� : ' || vname);
	DBMS_OUTPUT.PUT_LINE('������ : ' || vage);
	EXCEPTION		-- ����(����)ó��
	WHEN no_data_found THEN   -- ���� �̸��� �پ��մϴ�. 
		DBMS_OUTPUT.PUT_LINE('ã�� �����Ͱ� �����ϴ�.');
END;

--����Ŭ ��ü ���ν��� �����ϱ� : �˻��� ���� �Ű� ������ �����ϱ�

CREATE OR REPLACE PROCEDURE  search_custom(
	custom_id IN tbl_custom.CUSTOM_ID  %TYPE 
)
IS 
--�Ϲ� ���� ����
	vname tbl_custom.name %TYPE;
	vage tbl_custom.age %TYPE;

BEGIN 
		SELECT name,age 
	INTO vname , vage	-- ���ν��� ����: �˻������ ������ ����
	FROM "TBL_CUSTOM" tc 
	WHERE CUSTOM_ID ='mina012';		-- 1�� �ุ ��� ��ȸ�Ǵ� ����
	DBMS_OUTPUT.PUT_LINE('���̸� : ' || vname);
	DBMS_OUTPUT.PUT_LINE('������ : ' || vage);
	EXCEPTION		-- ����(����)ó��
	WHEN no_data_found THEN   -- ���� �̸��� �پ��մϴ�. `
		DBMS_OUTPUT.PUT_LINE('ã�� �����Ͱ� �����ϴ�.');
	c_name : ='no match';
END;
--���(���ϰ�)�� �ִ� ���ν��� ����: ��°� ������ ���� ������ �ʿ��մϴ�.

DECLARE 
 	vname tbl_custom.name %TYPE;
 
 BEGIN
	 	search_custom2('momo',vname);
	 	DBMS_OUTPUT.PUT_LINE('���̸� : ' || vname);
 
 END;

--function ����Ŭ ��ü�� ��
--����Ŭ �Լ�: upper, lower,decode, round ,to_date
