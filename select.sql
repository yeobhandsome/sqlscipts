select *from member_tbl_02;
select *from money_tbl_02;

--ȸ�� ���� ��ȸ ���ΰ� group by 

-- step1) ȸ���� �����հ�
select custno,sum(price) from money_tbl_02 mt
group by custno;

--step 2) ���� ���� Ȯ���ϱ�
select custno, sum(price) asum from money_tbl_02 mt
group by custno
order by asum desc;

--step3)custno �÷����� ����2)�� �� ���̺� �����Ͽ� ������ ��ü ��������
select *from member_tbl_02 mt,
	(select custno,sum(price) as asum from money_tbl_02 mt
		group bu custno
		order by asum desc) sale
	on mt.custno=sale.custno;


--step4) ������ �䱸 ���׿� ���� �÷���� �����ϱ�
������ڵ�
select mt.custno, mt.custname,
decode(mt.grade,'A','VIP','B','�Ϲ�','C','����') as agrade,
sale.asum from member_tbl_02 mt, 
(select custno,sum(price) as asum from money_tbl_02 mt
		group by custno
		order by asum desc) sale
	where mt.custno=sale.custno;

		hrd.vo ��Ű��
	�� MemberVO
	�� SaleVO : ȸ��������ȸ �÷��׸�� �����ϰ� ��.
hrd.dao ��Ű��
	�� HrdDao : ȸ�������ȸ(getMembers), ȸ��������ȸ(getsales)
hrd.main ��Ű��
	�� HrdMain : Dao �����ϱ�
	
	sqlpuls auto commit Ȯ���ϱ�
	show auto commit 
	set autocommit on; or commit;

