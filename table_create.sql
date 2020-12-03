create table t_lab(
	labid varchar(3),
	tid varchar(9),
	primary key(labid),
);

create table t_teacher(
	tid varchar(9),
	tname varchar(20),
	tage int default 0,
	labid varchar(3),
	foreign key(labid) references t_lab(labid),
	primary key(tid)
);

--ALTER   TABLE  t_lab
--     ADD   CONSTRAINT  FK_t_lab_t_teacher_tid
--           FOREIGN   KEY  (tid)  REFERENCES  t_teacher(tid);

create table t_student(
	s_id varchar(9) primary key,
	sname varchar(20),
	sage int default 0,
	tid varchar(9),
	researchname varchar(64),
	labid varchar(3),
	sitid varchar(3),
	foreign key(tid) references t_teacher(tid),
	foreign key(labid) references t_lab(labid),
);

create table t_team(
	teamid varchar(8)primary key,
	teamname varchar(40),
	tid varchar(9),
	foreign key(tid) references t_teacher(tid)
);

create table t_project(
	pid varchar(8) primary key,
	pname varchar(64),
	schedule bit default 0,
	teamid varchar(8),
	foreign key(teamid) references t_team(teamid)
);

create table t_join(
	teamid varchar(8),
	s_id varchar(9),
	jointime date,
	primary key(teamid,s_id)
);

create table t_equipment(
	equipmentid int primary key,
	equipmentname varchar(20),
	price int check(price>0),
	num int check(num>0),
);

create table t_lease(
	leaseid int identity(1,1) primary key,
	equipmentid int,
	teamid varchar(8),
	leasenum int check(leasenum>0),
	leasedate date
);


