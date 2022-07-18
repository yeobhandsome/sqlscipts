--계정은 C##idev

--시퀀스는 데이터를 참고해서 2개 필요한것 만드세요.

--오류를 대비해서 drop_biik.sql 파일에 drop 필요한 5개 테이블, 시퀀스

-- 명령어 작성하세요.

create table book_member(
mem_idx number(5) primary key,
name varchar2(20) unique,
email varchar2(20) not null,
tel varchar2(20),
password varchar2(10));


	
create table tbl_book(
bcode char(5) primary key,
title varchar2(30) not null,
writer varchar2(20),
publisher varchar2(20),
pdate date);

create table tbl_bookrent(
rent_no number(5) primary key,
mem_idx number(5) not null,
bcode char(5) not null,
rent_date date not null,
exp_date date not null,
return_date date,
delay_days number(3),
constraint fk1 foreign key (mem_idx)
references book_member(mem_idx),
constraint fk2 foreign key (bcode)
references tbl_book(bcode)
);

create sequence bookrent_seq ;

create sequence memidx_seq start with 10001;
 
insert into book_member (mem_idx,name,email,tel,password) 
values(memidx_seq.nextval,'이하늬','honey@naver.com','010-9889-0567','1122');
insert into book_member  (mem_idx,name,email,tel,password) 
values(memidx_seq.nextval,'이세종','jong@daum.net','010-2354-6773','2345');
insert into book_member (mem_idx,name,email,tel,password) 
values(memidx_seq.nextval,'최행운','lucky@korea.com','010-5467-8792','9876');
insert into book_member (mem_idx,name,email,tel,password)
 values(memidx_seq.nextval,'나길동','nadong@kkk.net','010-3456-8765','3456');
insert into book_member  (mem_idx,name,email,tel,password)
 values(memidx_seq.nextval,'강감찬','haha@korea.net','010-3987-9087','1234');
select *from book_member tm;

insert into tbl_book(bcode,title,writer,publisher,pdate) 
values('A1101','코스모스','칼세이건','사이언스북스',to_date('06/12/01','YY/MM/DD'));
insert into tbl_book(bcode,title,writer,publisher,pdate) 
values('B1101','해커스토익','이해커','해커스랩',to_date('18/07/10','YY/MM/DD'));
insert into tbl_book(bcode,title,writer,publisher,pdate)
 values('C1101','푸른사자 와니니','이현','창비',to_date('15/06/20','YY/MM/DD'));
insert into tbl_book(bcode,title,writer,publisher,pdate) 
values('A1102','페스트','알베르트 까뮈','민음사',to_date('11/03/01','YY/MM/DD')); 

select *from tbl_book tb;

insert into tbl_bookrent(rent_no,mem_idx,bcode,rent_date,exp_date,return_date)
values(bookrent_seq.nextval,10001,'B1101','2021-09-01','2021-09-15','2021-09-14');
insert into tbl_bookrent(rent_no,mem_idx,bcode,rent_date,exp_date,return_date)
values(bookrent_seq.nextval,10002,'C1101','2021-09-12','2021-09-26','2021-09-29');
insert into tbl_bookrent(rent_no,mem_idx,bcode,rent_date,exp_date,return_date)
values(bookrent_seq.nextval,10003,'B1101','2021-09-01','2021-09-17','2021-09-17');
insert into tbl_bookrent(rent_no,mem_idx,bcode,rent_date,exp_date)
values(bookrent_seq.nextval,10004,'C1101','2022-06-30','2022-07-14');
insert into tbl_bookrent(rent_no,mem_idx,bcode,rent_date,exp_date)
values(bookrent_seq.nextval,10001,'A1101','2022-07-04','2022-07-18');
insert into tbl_bookrent(rent_no,mem_idx,bcode,rent_date,exp_date,return_date)
values(bookrent_seq.nextval,10003,'A1102','2022-07-06','2022-07-20','2022-07-13');

select *from tbl_bookrent;

