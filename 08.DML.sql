/******************************
 DML (테이블의 데이타) 
     등록(c reate) 
     조회(r ead)  
     수정(u pdate)
     삭제(d elete) 
*******************************/
--insert 문
insert into author 
values(1, '박경리', '토지작가');


insert into author(author_id, author_name) 
values(2, '이문열');

insert into author(author_name,  author_id) 
values( '이문열', 2);

insert into author(author_id) 
values(1);



insert into author(author_id, author_name) 
values(3, '이문열');

insert into author(author_name) 
values('황일영');


--update 문
update author
set author_name = '기안84', 
    author_desc = '웹툰작가'
where author_id = 1;

--주의
update author
set author_name ='강풀',
    author_desc ='인기작가';

--특정 컬럼만 수정할때
update author
set author_name = '기안84'
where author_id = 1;

update author
set author_desc = '웹툰작가'
where author_id = 1;


insert into author
values(3, '황일영', '학생');


insert into author
values(4, '유재석', '개그맨');


update author
set author_desc = '남자'
where author_desc like '%맨';


--delete 문
delete from author
where author_id = 3 ;

commit;
rollback;

insert into author
values(5, '황일영', '강사');


insert into author
values(6, '이효리', '가수');


insert into author
values(?, '박명수', '개그맨');


--시퀀스
create sequence seq_author_id
increment by 1
start with 1
nocache;

insert into author
values(seq_author_id.nextVal, '박명수', '개그맨');

--시퀀스조회
select * from USER_SEQUENCES;


--작가시퀀스 현재 값
select seq_author_id.currval from dual;

--*가상 테이블 dual
select sysdate from dual;

--시퀀스 삭제
drop sequence seq_author_id;


commit;
rollback;
