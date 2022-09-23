create table member (
	id varchar(20) not null,
	password varchar(30) not null,
	name varchar(20) not null,
	gender varchar(4),
	birth varchar(10),
	mail varchar(40),
	phone varchar(20),
	address varchar(100),
	regist_day varchar(50),
	primary key(id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;