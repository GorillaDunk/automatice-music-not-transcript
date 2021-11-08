create table member_list(
    id varchar2(50) primary key,
    pw varchar2(50)
);

create table song_list(
    song_name varchar2(50) primary key,
    composer varchar2(50),
    difficulty varchar2(50)
);

create table instrument_list(
    instrument_number number primary key,
    instrument_name varchar2(50)
);

create table sheet_list(
    song_name varchar2(50),
    instrument_number number,
    sheet_path varchar2(100) primary key
);

create table like_list(
    id varchar2(50),
    song_name varchar2(50)
);

create table score_list(
    id varchar2(50),
    song_name varchar2(50),
    instrument_number number,
    score number,
    day date
);

create table down_sheet_list(
    id varchar2(50),
    song_name varchar2(50),
    instrument_number number,
    sheet_path varchar2(100)
);

insert into member_list values ('power', '1234')
insert into song_list values ('인생의 회전목마','류이치 사카모토','중급')
insert into song_list values ('Summer','하사이시조','중급')
insert into song_list values ('백엔스','빤니빤니','고급')