--DDL (테이블)

--테이블 만들기
create table book(
    book_id number(5), 
    title varchar2(50),
    author varchar2(10),
    pub_date date
);

--테이블에 컬럼추가
--book테이블에  pubs 컬럼 추가
alter table book add(pubs varchar2(50));

--테이블에 컬럼정보변경
--book테이블에  title컬럼의 
--             VARCHAR2(50)-->VARCHAR2(100)
alter table book modify(title varchar2(100));

--book테이블에  title컬럼명 -->  subject
alter table book rename column title to subject;

--book테이블에 author 컬럼 삭제
alter table book drop(author);

--테이블명 변경
--book -->  article
rename book to article;

--테이블 삭제
drop table article;


/*------------------------------------
테이블 만들기
------------------------------------*/
--author테이블
create table author(
    author_id number(10),
    author_name varchar2(100) not null,
    author_desc varchar2(500),
    primary key(author_id)
);

--book테이블
create table book(
    book_id number,
    title varchar2(100) not null,
    pubs varchar2(100),
    pub_date date,
    author_id number(10),
    primary key(book_id),
    constraint book_fk foreign key(author_id) 
    references author(author_id)
);
