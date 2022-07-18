-- view : ���� ���̺�(���������� �������� �ʰ� �������� ������� ���̺�)
--          �� �������� ���̺��� �̿��ؼ� �����մϴ�.
--			�� �����(������)�� ���̺�ó�� select �� ��ȸ�� �Ҽ� �ִ� ���̺�
--				���� ���Ǵ� join ���� �̸� view �����ؼ� ����մϴ�.
--			�� grant resource,connect to idev;   -> resource �� view ������ �����Դϴ�.

CREATE VIEW v_dept
AS

SELECT d.DEPARTMENT_ID ,DEPARTMENT_NAME ,e.EMPLOYEE_ID ,e.FIRST_NAME ,e.HIRE_DATE ,e.JOB_ID 
FROM departments d ,EMPLOYEES e 
WHERE d.department_id =e.DEPARTMENT_ID;

CREATE VIEW v_buy
AS
SELECT *FROM TBL_BUY tb ,TBL_CUSTOM tc 
WHERE tb.CUSTOM_ID =tc.CUSTOM_ID;
