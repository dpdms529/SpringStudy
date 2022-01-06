create table mp_board(
	bno number not null,
	title varchar2(100) not null,
	content varchar2(2000) not null,
	writer varchar2(100) not null,
	regdate date default sysdate,
	primary key(bno)
)segment creation immediate;

select * from mp_board;

create sequence mp_board_seq
start with 1
increment by 1;

insert into mp_board(bno,title,content,writer)
	 values(mp_board_seq.nextval, '제목입니다', '내용입니다', 'yeeun');
commit;
select * from mp_board;
