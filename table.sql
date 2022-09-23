
/* Drop Tables */

DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE admin1 CASCADE CONSTRAINTS;
DROP TABLE car CASCADE CONSTRAINTS;
DROP TABLE how CASCADE CONSTRAINTS;
DROP TABLE one CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE join CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE admin1
(
	id varchar2(20) NOT NULL,
	pw varchar2(30),
	PRIMARY KEY (id)
);


CREATE TABLE car
(
	carnum varchar2(20),
	carbrand varchar2(20),
	carname varchar2(30),
	fueltype varchar2(10),
	origin varchar2(10),
	cyear varchar2(5),
	color varchar2(10),
	km number(10,0),
	price number(19,0),
	content varchar2(1000),
	readcnt number(10,0),
	custnum number(10,0) NOT NULL,
	id varchar2(30) NOT NULL
);


CREATE TABLE how
(
	photo varchar2(1000),
	hname varchar2(100),
	htitle varchar2(30),
	good varchar2(200),
	bad varchar2(200),
	hcontent varchar2(1500),
	score varchar2(10)
);


CREATE TABLE join
(
	custnum number(10,0) NOT NULL,
	name varchar2(20),
	sb varchar2(10),
	address varchar2(50),
	id varchar2(30) NOT NULL,
	pw varchar2(30),
	email varchar2(50),
	birth date,
	tel varchar2(30),
	PRIMARY KEY (custnum, id)
);


CREATE TABLE notice
(
	nnum number(10,0),
	ntitle varchar2(100),
	ndate date DEFAULT SYSDATE,
	ncontent varchar2(1000),
	nreadcnt number(10,0),
	id varchar2(20) NOT NULL
);


CREATE TABLE one
(
	num number(10,0),
	qlist varchar2(40),
	title varchar2(100),
	rdate date DEFAULT SYSDATE,
	content varchar2(1000),
	custnum number(10,0) NOT NULL,
	id varchar2(30) NOT NULL
);


CREATE TABLE reply
(
	rcontent varchar2(300),
	rdate date DEFAULT SYSDATE,
	custnum number(10,0) NOT NULL,
	id varchar2(30) NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE notice
	ADD FOREIGN KEY (id)
	REFERENCES admin1 (id)
;


ALTER TABLE car
	ADD FOREIGN KEY (custnum, id)
	REFERENCES join (custnum, id)
;


ALTER TABLE one
	ADD FOREIGN KEY (custnum, id)
	REFERENCES join (custnum, id)
;


ALTER TABLE reply
	ADD FOREIGN KEY (custnum, id)
	REFERENCES join (custnum, id)
;



