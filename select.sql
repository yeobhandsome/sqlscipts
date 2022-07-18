select *from member_tbl_02;
select *from money_tbl_02;

--회원 매출 조회 조인과 group by 

-- step1) 회원별 매출합계
select custno,sum(price) from money_tbl_02 mt
group by custno;

--step 2) 정렬 기준 확인하기
select custno, sum(price) asum from money_tbl_02 mt
group by custno
order by asum desc;

--step3)custno 컬럼으로 스텝2)와 고객 테이블 조인하여 고객정보 전체 가져오기
select *from member_tbl_02 mt,
	(select custno,sum(price) as asum from money_tbl_02 mt
		group bu custno
		order by asum desc) sale
	on mt.custno=sale.custno;


--step4) 제시한 요구 사항에 따라 컬럼결과 변경하기
고객등급코드
select mt.custno, mt.custname,
decode(mt.grade,'A','VIP','B','일반','C','직원') as agrade,
sale.asum from member_tbl_02 mt, 
(select custno,sum(price) as asum from money_tbl_02 mt
		group by custno
		order by asum desc) sale
	where mt.custno=sale.custno;

		hrd.vo 패키지
	ㄴ MemberVO
	ㄴ SaleVO : 회원매출조회 컬럼항목과 동일하게 함.
hrd.dao 패키지
	ㄴ HrdDao : 회원목록조회(getMembers), 회원매출조회(getsales)
hrd.main 패키지
	ㄴ HrdMain : Dao 실행하기
	
	sqlpuls auto commit 확인하기
	show auto commit 
	set autocommit on; or commit;

