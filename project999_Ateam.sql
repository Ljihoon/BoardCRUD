
--������Ʈ �� : Project999_Ateam
--�۾��� : JSP�Խ��� ���� ��������Ʈ

--Ŀ�� �ѹ�
commit;
rollback;

--���� �Խ��� ����� ����
drop table qna_board;
drop table reviews_board;
drop table ateam_user;


--���̺� ���� ���ǰԽ���
create table qna_board(
    seq         number(5)       primary key,
    subject     varchar2(50)    not null,
    writer      varchar2(50)    not null,
    email       varchar2(50)    not null,
    content     varchar2(2000)  not null,
    password    varchar2(50)    not null,
    agree       varchar2(50)    not null,
    regdate     date            default sysdate,
    -- ��ȸ�� �߰�
    cnt         number(5)   default 0
);
select * from qna_board order by seq desc;

--���̺� ���� �ı�Խ���
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
        -- ��ȸ�� �߰�
    cnt         number(5)   default 0
);
select * from reviews_board order by seq desc;

--���̺� ���� ����
create table ateam_user(
    id varchar2(50) PRIMARY key,
    password varchar2(50) not null,
    name varchar2(100) not null,
    tel varchar2(20),
    email varchar2(100),
    agree_clauses varchar2(50),
    agree_info varchar2(50),
    agree_email varchar2(50),
    member_cgy varchar2(50) DEFAULT '����ȸ��'
);
select * from ateam_user;

--�׽�Ʈ ������
insert into qna_board VALUES(nvl((select max(seq) from qna_board),0)+1, 'Ÿ��Ʋ','�ۼ���','email@email.com','content','password','agree',sysdate,0);
insert into reviews_board VALUES(nvl((select max(seq) from reviews_board),0)+1, 'Ÿ��Ʋ','�ۼ���','email@email.com','5','content','','','password','agree',sysdate,0);
insert into ateam_user VALUES('id','pass','�ۼ���','010-1111-1111','email@email.com','agree','agree','agree','');

--�Խñ� ��ȸ�� ������ ���.
update qna_board set cnt = cnt+1 where seq=1;
select seq,subject,writer,regdate,cnt from qna_board where seq = 1 ;

--�Խñ� ����Ʈ ���, Ư�� �Խñ۸� ���
select seq,title,writer,regdate,cnt,grade from reviews_board;
select * from reviews_board where seq =1;

--�Խñ� ������Ʈ
update reviews_board set title='����',grade='5',content='����',ucc_url='',agree='agree' where seq =1;


-- ���̵�� ��й�ȣ ��������
select password from ateam_user where id='id';

--�Խñ� ����
delete from reviews_board where seq = '1';

--�Խñ� ������Ʈ 
update qna_board set content='����' where seq ='1';

