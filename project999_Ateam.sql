
--프로젝트 명 : Project999_Ateam
--작업명 : JSP게시판 연습 팀프로젝트

--커밋 롤백
commit;
rollback;

--기존 게시판 지우고 시작
drop table qna_board;
drop table reviews_board;
drop table ateam_user;


--테이블 생성 문의게시판
create table qna_board(
    seq         number(5)       primary key,
    subject     varchar2(50)    not null,
    writer      varchar2(50)    not null,
    email       varchar2(50)    not null,
    content     varchar2(2000)  not null,
    password    varchar2(50)    not null,
    agree       varchar2(50)    not null,
    regdate     date            default sysdate,
    -- 조회수 추가
    cnt         number(5)   default 0
);
select * from qna_board order by seq desc;

--테이블 생성 후기게시판
create table reviews_board(
    seq         number(5)       primary key,
    title       varchar2(50)    not null,
    writer      varchar2(50)    not null,
    email       varchar2(50)    not null,
    grade       number(5)       not null,
    content     varchar2(2000)  not null,
    ucc_url     varchar2(500),
    files       varchar2(1500),
    password    varchar2(50)    not null,
    agree       varchar2(50)    not null,
    regdate     date            default sysdate,
        -- 조회수 추가
    cnt         number(5)   default 0
);
select * from reviews_board order by seq desc;

--테이블 생성 유저
create table ateam_user(
    id varchar2(50) PRIMARY key,
    password varchar2(50) not null,
    name varchar2(100) not null,
    tel varchar2(20),
    email varchar2(100),
    agree_clauses varchar2(50),
    agree_info varchar2(50),
    agree_email varchar2(50),
    member_cgy varchar2(50) DEFAULT '개인회원'
);
select * from ateam_user;

--테스트 데이터
insert into qna_board VALUES(nvl((select max(seq) from qna_board),0)+1, '타이틀','작성자','email@email.com','content','password','agree',sysdate,0);
insert into reviews_board VALUES(nvl((select max(seq) from reviews_board),0)+1, '타이틀','작성자','email@email.com','5','content','','','password','agree',sysdate,0);
insert into ateam_user VALUES('id','pass','작성자','010-1111-1111','email@email.com','agree','agree','agree','');

--게시글 조회수 증가와 출력.
update qna_board set cnt = cnt+1 where seq=1;
select seq,subject,writer,regdate,cnt from qna_board where seq = 1 ;

--게시글 리스트 출력, 특정 게시글만 출력
select seq,title,writer,regdate,cnt,grade from reviews_board;
select * from reviews_board where seq =1;

--게시글 업데이트
update reviews_board set title='수정',grade='5',content='내용',ucc_url='',agree='agree' where seq =1;


-- 아이디로 비밀번호 가져오기
select password from ateam_user where id='id';

--게시글 삭제
delete from reviews_board where seq = '1';

--게시글 업데이트 
update qna_board set content='수정' where seq ='1';

