DROP TABLE users;
DROP TABLE product;
DROP TABLE breed_pedia;
DROP TABLE files;
DROP TABLE coupon;
DROP TABLE report;
DROP TABLE mileage;
DROP TABLE adopt;
DROP TABLE cart;
DROP TABLE storyfunding;
DROP TABLE message;
DROP TABLE orders;
DROP TABLE apply;
DROP TABLE board;
DROP TABLE interest;
DROP TABLE comments;
DROP TABLE review;
DROP TABLE recomment;
DROP TABLE participate;

DROP SEQUENCE seq_USERS_USER_NO;
DROP SEQUENCE seq_PRODUCT_PROD_NO;
DROP SEQUENCE seq_BREED_PEDIA_BREED_NO;
DROP SEQUENCE seq_FILES_FILE_NO;

DROP SEQUENCE seq_COUPON_COUPON_NO;
DROP SEQUENCE seq_REPORT_REPORT_NO;
DROP SEQUENCE seq_MILEAGE_MILEAGE_NO;
DROP SEQUENCE seq_ADOPT_POST_NO;
DROP SEQUENCE seq_CART_CART_NO;
DROP SEQUENCE seq_STORYFUNDING_POST_NO;
DROP SEQUENCE seq_MESSAGE_MESSAGE_NO;

DROP SEQUENCE seq_ORDERS_ORDER_NO;
DROP SEQUENCE seq_APPLY_APPLY_NO;
DROP SEQUENCE seq_BOARD_POST_NO;

DROP SEQUENCE seq_INTEREST_INTEREST_NO;
DROP SEQUENCE seq_COMMENTS_COMMENT_NO;
DROP SEQUENCE seq_REVIEW_POST_NO;
DROP SEQUENCE seq_RECOMMENT_RECOMMENT_NO;

DROP SEQUENCE seq_PARTICIPATE_PARTICIPATE_NO;



CREATE SEQUENCE seq_USERS_USER_NO 			INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_PRODUCT_PROD_NO 	 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_BREED_PEDIA_BREED_NO 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_FILES_FILE_NO	 			INCREMENT BY 1 START WITH 10000;

CREATE SEQUENCE seq_COUPON_COUPON_NO	 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_REPORT_REPORT_NO	 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_MILEAGE_MILEAGE_NO			INCREMENT BY 1 START WITH 10000;	
CREATE SEQUENCE seq_ADOPT_POST_NO	 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_CART_CART_NO	 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_STORYFUNDING_POST_NO 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_MESSAGE_MESSAGE_NO 		INCREMENT BY 1 START WITH 10000;

CREATE SEQUENCE seq_ORDERS_ORDER_NO 			INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_APPLY_APPLY_NO 			INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_BOARD_POST_NO 			INCREMENT BY 1 START WITH 10000;

CREATE SEQUENCE seq_INTEREST_INTEREST_NO 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_COMMENTS_COMMENT_NO 		INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_REVIEW_POST_NO 			INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_RECOMMENT_RECOMMENT_NO 		INCREMENT BY 1 START WITH 10000;

CREATE SEQUENCE seq_PARTICIPATE_PARTICIPATE_NO 		INCREMENT BY 1 START WITH 10000;


CREATE TABLE USERS ( 
	USER_NO			NUMBER(6,0) 	NOT NULL, 
	ID 			VARCHAR2(12) 	NOT NULL UNIQUE,
	KAKAO			VARCHAR2(100)	UNIQUE,
	NAVER			VARCHAR2(100)	UNIQUE,
	GOOGLE			VARCHAR2(100)	UNIQUE,
	FACEBOOK		VARCHAR2(100)	UNIQUE,
	PW 			CHAR(8) 		NOT NULL,
	USER_NAME 		VARCHAR2(10) 	NOT NULL,
	NICKNAME 		VARCHAR2(14)	NOT NULL UNIQUE,
	EMAIL 			VARCHAR2(100),
	PHONE 			VARCHAR2(13) 	UNIQUE,
	USER_ADDR 		VARCHAR2(1000),
	ACCOUNT 		VARCHAR2(30),
	BIRTH_DATE 		NUMBER(6,0), 
	GENDER			CHAR(1) 		DEFAULT 0, 
	LEVEL_POINT 		NUMBER(4,0), 
	LEVELS			VARCHAR2(20)	DEFAULT '������ ȸ��',
	ACCESS_DATE 		DATE, 
	ROLE			VARCHAR2(10)	DEFAULT 'user',  
	PURPOSE1		VARCHAR2(50), 
	PURPOSE2		VARCHAR2(50),
	PURPOSE3		VARCHAR2(50),
	PROFILE			VARCHAR2(100),
	PRIMARY KEY(USER_NO));

CREATE TABLE PRODUCT (
	PROD_NO 		NUMBER(6,0) 	NOT NULL,
	PROD_NAME 		VARCHAR2(50) 	UNIQUE NOT NULL, 
	PRICE 			NUMBER(10,0) 	NOT NULL, 
	MANU_DATE 		DATE 		NOT NULL, 
	REG_DATE 		DATE 		NOT NULL, 
	COUNTRY 		VARCHAR2(50), 
	QUANTITY 		NUMBER(6,0) 	DEFAULT 0, 
	PROD_DETAIL 		VARCHAR2(4000) 	NOT NULL, 
	COMPANY 		VARCHAR2(15) 	NOT NULL, 
	DISCOUNT_PRICE 		NUMBER(10,0) 	NOT NULL, 
	PRIMARY KEY(PROD_NO));

CREATE TABLE BREED_PEDIA (
   	BREED_NO		NUMBER(6,0)	 NOT NULL, 
	WEIGHT 			FLOAT		 NOT NULL, 
	HEIGHT 			FLOAT		 NOT NULL,
	AVG_LIFE 		NUMBER(2)	 NOT NULL, 
	ADD_INFO 		VARCHAR2(1000),
	TYPES 			VARCHAR2(100)	 NOT NULL, 
	CHARACTERS 		VARCHAR2(500)	 NOT NULL, 
	FILES 			VARCHAR2(100)	 NOT NULL, 
	NAME 			VARCHAR2(100)	 NOT NULL, 
	PRIMARY KEY (BREED_NO));
	
CREATE TABLE FILES (
	FILE_NO 			NUMBER(6,0) 	NOT NULL ENABLE, 
	BOARD_CODE 		CHAR(2) 		NOT NULL, 
	POST_NO 		NUMBER(6,0) 	NOT NULL, 
	FILE_NAME 		VARCHAR2(100) 	NOT NULL, 
	FILE_CODE 		CHAR(1) 		NOT NULL,
	PRIMARY KEY(FILE_NO));

CREATE TABLE COUPON (
	COUPON_NO 		NUMBER(6,0) 	NOT NULL,
	COUPON_CODE 		VARCHAR2(10,0) 	NOT NULL,
	RECEIVER_ID 		VARCHAR2(12) 	NOT NULL REFERENCES USERS(ID),
	COUPON_NAME 		VARCHAR2(50)  	NOT NULL,
	DISCOUNT 		NUMBER(5,0)  	NOT NULL,
	COUPON_STATUS 		CHAR(1),
	MAKE_DATE 		DATE,
	LIMIT_DATE 		DATE,
	USE_DATE		DATE,
	PRIMARY KEY(COUPON_NO));

CREATE TABLE REPORT (
 	REPORT_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	REPORTER_ID 		VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID),
	REPORTED_ID 		VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID),
	REPORT_CATEGORY 	VARCHAR2(20) 	NOT NULL ENABLE, 
	REPORT_CONTENT 	VARCHAR2(2000) 	NOT NULL ENABLE, 
	REPORT_STATUS 		NUMBER(1,0) 	NOT NULL ENABLE,
	REPORT_DATE		DATE,
	DEL_CODE 		CHAR(1),
	FILE1			VARCHAR2(100)	NOT NULL ENABLE,
	FILE2			VARCHAR2(100),
	FILE3			VARCHAR2(100),
	PRIMARY KEY (REPORT_NO));

CREATE TABLE MILEAGE (
	MILEAGE_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	MILEAGE_CODE 		NUMBER(3,0) 	UNIQUE, 
	MILEAGE 			NUMBER(7,0) 	DEFAULT 0, 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	MILEAGE_REASON 		VARCHAR2(200) 	NOT NULL, 
	REG_DATE 		DATE, 
	PRIMARY KEY (MILEAGE_NO));
	
CREATE TABLE ADOPT(
   	BOARD_CODE 		CHAR(2) 		NOT NULL ENABLE, 
	POST_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	POST_TITLE 		VARCHAR2(30) 	NOT NULL ENABLE, 
	POST_CONTENT 		VARCHAR2(600) 	NOT NULL ENABLE, 
	PHONE 			VARCHAR2(13) 	NOT NULL ENABLE REFERENCES USERS(PHONE), 
	ADOPT_AREA 		VARCHAR2(150) , 
	LOCATION 		VARCHAR2(50) 	NOT NULL ENABLE, 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	DOG_BREED 		VARCHAR2(20), 
	DOG_WEIGHT 		NUMBER(4,2) 	NOT NULL ENABLE, 
	DOG_SIZE 		VARCHAR2(6) 	NOT NULL ENABLE, 
	DOG_GENDER 		VARCHAR2(4) 	NOT NULL ENABLE, 
	DOG_PAY 		NUMBER(6,0) 	NOT NULL ENABLE, 
	DOG_STATUS 		VARCHAR2(40) 	NOT NULL ENABLE, 
	DOG_CHAR 		VARCHAR2(40) 	NOT NULL ENABLE, 
	DOG_PERSONALITY 	VARCHAR2(40) 	NOT NULL ENABLE, 
	DOG_DATE 		DATE 		NOT NULL ENABLE, 
	STATUS_CODE 		CHAR(1) 		DEFAULT '1' NOT NULL ENABLE, 
	PRIMARY KEY (POST_NO));
	
CREATE TABLE CART (
   	CART_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	PROD_NO 		NUMBER(6) 	REFERENCES PRODUCT(PROD_NO), 
	TOTAL_PRICE 		NUMBER(10,0),  
	QUANTITY 		NUMBER(6,0) 	DEFAULT 1, 
	ID 			VARCHAR2(12) 	REFERENCES USERS(ID), 
	PRIMARY KEY (CART_NO));
	
CREATE TABLE STORYFUNDING(   
	POST_NO          NUMBER(6,0)    NOT NULL ENABLE, 
	ID                VARCHAR2(12)    NOT NULL ENABLE REFERENCES USERS(ID), 
	NICKNAME          VARCHAR2(14)    NOT NULL ENABLE REFERENCES USERS(NICKNAME),
	STATUS_CODE       CHAR(1)       NOT NULL ENABLE, 
	PHONE             VARCHAR2(13)    NOT NULL ENABLE, 
	POST_TITLE          VARCHAR2(30)    NOT NULL ENABLE, 
	POST_CONTENT       VARCHAR2(600)    NOT NULL ENABLE, 
	VIEW_COUNT          NUMBER(5,0)    DEFAULT 0 NOT NULL ENABLE, 
	VOTER_COUNT       NUMBER(5,0)    DEFAULT 0 NOT NULL ENABLE, 
	VOTE_START_DATE    DATE          NOT NULL ENABLE, 
	VOTE_END_DATE       DATE          NOT NULL ENABLE, 
	FUND_TARGET_PAY    NUMBER(7,0)    NOT NULL ENABLE,
	VOTE_TARGET_COUNT    NUMBER(5,0)    NOT NULL ENABLE, 
	FUND_TARGET_DAY     NUMBER(2,0)     NOT NULL ENABLE, 
	SPONSOR_COUNT       NUMBER(5,0)    DEFAULT 0 NOT NULL ENABLE, 
	FUND_PAY          NUMBER(10,0)    DEFAULT 0 NOT NULL ENABLE, 
	FUND_START_DATE    DATE          NOT NULL ENABLE, 
	FUND_END_DATE       DATE          NOT NULL ENABLE,
	REVIEW_TITLE       VARCHAR(30),
	REVIEW_CONTENT       VARCHAR(600),
	REVIEW_REG_DATE    DATE,
	PRIMARY KEY (POST_NO));

CREATE TABLE MESSAGE (
   	MESSAGE_NO 			NUMBER(6,0) 	NOT NULL ENABLE, 
	MESSAGE_TITLE 		VARCHAR2(200) 	NOT NULL ENABLE, 
	MESSAGE_CONTENT 	VARCHAR2(2000) 	NOT NULL ENABLE, 
	SEND_ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	RECEIVE_ID 		VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	SEND_DATE 			DATE, 
	RECEIVE_DATE 		DATE, 
	MESSAGE_STATUS 		CHAR(1) 		NOT NULL ENABLE, 
	DEL_CODE 			CHAR(1) 		NOT NULL,
	PRIMARY KEY (MESSAGE_NO));

	 
CREATE TABLE ORDERS (
   	ORDER_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	PROD_NAME 		VARCHAR2(50) 	REFERENCES PRODUCT(PROD_NAME) NOT NULL, 
	PROD_NO 		NUMBER(6,0) 	REFERENCES PRODUCT(PROD_NO) NOT NULL, 
	ID 			VARCHAR2(12) 	REFERENCES USERS(ID) NOT NULL, 
	PHONE 			VARCHAR2(13) 	REFERENCES USERS(PHONE) NOT NULL,
	RECEIVER_ADDR 		VARCHAR2(100) 	NOT NULL, 
	RECEIVER_NAME 		VARCHAR2(50) 	NOT NULL, 
	RECEIVER_PHONE 		VARCHAR2(13) 	NOT NULL, 
	ORDER_REQUEST 		VARCHAR2(40), 
	PAYMENT_CODE 		NUMBER(2,0) 	NOT NULL, 
	ORDER_DATE 		DATE, 
	COUPON_NO 		NUMBER(6,0) 	REFERENCES COUPON(COUPON_NO), 
	ORDER_QUANTITY 		NUMBER(6,0) 	NOT NULL,  
	TOTAL_PRICE 		NUMBER(10,0) 	NOT NULL, 
	ORDER_CODE 		NUMBER(2,0) 	DEFAULT 0,  
	DELIVERY_CODE 		NUMBER(7,0),
 	MILEAGE_NO 		NUMBER(6,0) 	NOT NULL REFERENCES MILEAGE(MILEAGE_NO),  
	PRIMARY KEY (ORDER_NO));
	 

CREATE TABLE APPLY (
   	APPLY_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	ADOPT_NO 		NUMBER(6,0) 	NOT NULL ENABLE REFERENCES ADOPT(POST_NO), 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	PHONE 			VARCHAR2(13) 	NOT NULL ENABLE REFERENCES USERS(PHONE), 
	JOB 			NUMBER(1,0) 	NOT NULL ENABLE, 
	ADDR 			NUMBER(1,0) 	NOT NULL ENABLE, 
	MATE 			NUMBER(1,0) 	NOT NULL ENABLE, 
	MATE_AGREE 		NUMBER(1,0), 
	RAISE 			NUMBER(1,0) 	NOT NULL ENABLE, 
	CURRENTLY 		NUMBER(1,0), 
	PLAN 			VARCHAR2(400) 	NOT NULL ENABLE, 
	PAY 			VARCHAR2(200) 	NOT NULL ENABLE, 
	REASON 			VARCHAR2(400) 	NOT NULL ENABLE, 
	SITUATION 		VARCHAR2(400) 	NOT NULL ENABLE, 
	TIME 			VARCHAR2(200 ) 	NOT NULL ENABLE, 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	STATUS_CODE 		CHAR(1) 		DEFAULT '1' NOT NULL ENABLE,
	PRIMARY KEY (APPLY_NO));
	 

CREATE TABLE BOARD (
   	POST_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	BOARD_CODE 		CHAR(2) 		NOT NULL ENABLE, 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE  REFERENCES USERS(ID), 
	NICKNAME 		VARCHAR2(14) 	NOT NULL ENABLE  REFERENCES USERS(NICKNAME), 
	POST_TITLE 		VARCHAR2(30) 	NOT NULL ENABLE, 
	POST_CONTENT 		VARCHAR2(600) 	NOT NULL ENABLE, 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	VIEW_COUNT 		NUMBER(5,0) 	DEFAULT 0 NOT NULL ENABLE, 
	RECOMMEND_COUNT 	NUMBER(5,0), 
	MARKET_CODE 		NUMBER(2,0), 
	PRICE 			NUMBER(10,0), 
	CITY 			VARCHAR2(20), 
	PHONE 			VARCHAR2(13) 	REFERENCES USERS(PHONE), 
	QNA_CODE 		CHAR(2), 
	ROUTE 			VARCHAR2(250), 
	PROD_NAME 		VARCHAR2(200), 
	DEL_CODE		CHAR(1),
	PRIMARY KEY (POST_NO));

CREATE TABLE PARTICIPATE (
	PARTICIPATE_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	NICKNAME 		VARCHAR2(14) 	NOT NULL REFERENCES USERS(NICKNAME),
	POST_NO 		NUMBER(6,0) 	NOT NULL ENABLE REFERENCES STORYFUNDING(POST_NO), 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	FUND_PAY 		NUMBER(7,0), 
	PRIMARY KEY (PARTICIPATE_NO));
	 
CREATE TABLE COMMENTS (
   	COMMENT_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	BOARD_CODE 		CHAR(2) 		NOT NULL ENABLE, 
	POST_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE, 
	COMMENT_CONTENT 	VARCHAR2(400) 	NOT NULL ENABLE, 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	LIKE_COUNT 		NUMBER(4,0) 	NOT NULL ENABLE, 
	NICKNAME 		VARCHAR2(14) 	NOT NULL ENABLE, 
	STATUS_CODE		CHAR(1)		DEFAULT '1',
	PRIMARY KEY (COMMENT_NO));
	
CREATE TABLE INTEREST (
   	INTEREST_NO 		NUMBER(6,0), 
	BOARD_CODE 		CHAR(2), 
	COMMENT_NO 		NUMBER(6,0) 	REFERENCES COMMENTS(COMMENT_NO), 
	POST_NO 		NUMBER(6,0) 	REFERENCES BOARD(POST_NO), 
	ID 			VARCHAR2(12) 	REFERENCES USERS(ID), 
	REG_DATE 		DATE,
	PRIMARY KEY (INTEREST_NO));

CREATE TABLE REVIEW (
   	POST_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	BOARD_CODE 		CHAR(2) 		NOT NULL ENABLE, 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	NICKNAME 		VARCHAR2(14) 	NOT NULL ENABLE REFERENCES USERS(NICKNAME), 
	POST_TITLE 		VARCHAR2(30) 	NOT NULL ENABLE, 
	POST_CONTENT 		VARCHAR2(600) 	NOT NULL ENABLE, 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	GRADE 			NUMBER(1,0), 
	HOSPITAL_LONGITUDE 	NUMBER(9,0), 
	HOSPITAL_LATITUDE 	NUMBER(9,0), 
	ORDER_NO 		NUMBER(6,0), 
	STATUS_CODE		CHAR(1)		DEFAULT '1',
	PRIMARY KEY (POST_NO));

CREATE TABLE RECOMMENT (
   	RECOMMENT_NO 		NUMBER(6,0) 	NOT NULL ENABLE, 
	COMMENT_NO 		NUMBER(6,0) 	NOT NULL ENABLE REFERENCES COMMENTS(COMMENT_NO), 
	ID 			VARCHAR2(12) 	NOT NULL ENABLE REFERENCES USERS(ID), 
	REG_DATE 		DATE 		NOT NULL ENABLE, 
	NICKNAME 		VARCHAR2(14) 	NOT NULL ENABLE REFERENCES USERS(NICKNAME), 
	STATUS_CODE		CHAR(1)		DEFAULT '1',
	PRIMARY KEY (RECOMMENT_NO));



INSERT INTO users 
(id, pw, user_name, nickname, level_point, user_no, role, levels)
VALUES 
('admin', '12345678', 'admin', '���', 0, 10000, 'admin', '������ȸ��');

INSERT INTO users
(id, pw, user_name, nickname, email, phone, user_addr, account, birth_date, level_point, user_no, gender, role, levels, purpose1, purpose2)
VALUES
('user01', '87654321', 'scott', '��ı', 'scott@tiger.com', '011-1123-4567', '����� ���ϱ�', '110-234-567890', '900314', '5600', '10001', 'm', 'user', '���', '��������', '�Ծ�');

INSERT INTO users
(id, kakao, pw, user_name, nickname, level_point, user_no, role, levels)
VALUES
('user02', '29343041834', 'qwerty12', 'tiger', 'ȣ����', 0, 10002, 'user', '������ȸ��');

INSERT INTO users
(id, naver, pw, user_name, nickname, email, phone, user_addr, account, birth_date, level_point, user_no, gender, role, levels, purpose1)
VALUES 
('user03', '123124124', 'ytrewq21', 'hello', '�ȳ�', 'hello@tiger.com', '011-2123-4567', '����� ���ϱ�', '110-432-098765', 900314, 0, 10003, 'm', 'user', '�����', '�Ծ�');	 

INSERT INTO message
(message_no, message_title, message_content, send_id, receive_id, send_date, 
receive_date, message_status, del_code)
VALUES
(seq_message_message_no.NEXTVAL, '�׽�Ʈ1', '�̰Ž� �׽�Ʈ�� �Žÿ�1', 'user01', 'user02', SYSDATE, null, '0', '0');

INSERT INTO message
(message_no, message_title, message_content, send_id, receive_id, send_date, receive_date, essage_status, del_code)
VALUES
(seq_message_message_no.NEXTVAL, '�׽�Ʈ2', '�̰Ž� �׽�Ʈ�� �Žÿ�2', 'user02', 'user01', SYSDATE, SYSDATE, '1', '0');

INSERT INTO message
(message_no, message_title, message_content, send_id, receive_id, send_date, receive_date, essage_status, del_code)
VALUES
(seq_message_message_no.NEXTVAL, '�׽�Ʈ3', '�̰Ž� �׽�Ʈ�� �Žÿ�3', 'user03', 'user01', SYSDATE, SYSDATE, '1', '1');


INSERT 
INTO STORYFUNDING(POST_NO , ID , NICKNAME , STATUS_CODE ,  PHONE ,  POST_TITLE , POST_CONTENT , VIEW_COUNT , VOTER_COUNT , VOTE_START_DATE , VOTE_END_DATE , FUND_TARGET_PAY , VOTE_TARGET_COUNT , FUND_TARGET_DAY , SPONSOR_COUNT , FUND_PAY , FUND_START_DATE , FUND_END_DATE)
VALUES ( SEQ_STORYFUNDING_POST_NO.NEXTVAL ,'user01' ,'��ı' ,0 ,'010-1234-5678' ,'�������������ּ���' ,'���볻�� �����ּ���' ,0 ,0 , SYSDATE ,SYSDATE+30 ,100000,200,20 ,0, 10000,SYSDATE+31 , SYSDATE+61 );
    
INSERT 
INTO STORYFUNDING(POST_NO , ID , NICKNAME , STATUS_CODE ,  PHONE ,  POST_TITLE , POST_CONTENT , VIEW_COUNT , VOTER_COUNT , VOTE_START_DATE ,VOTE_END_DATE , FUND_TARGET_PAY , VOTE_TARGET_COUNT , FUND_TARGET_DAY , SPONSOR_COUNT , FUND_PAY , FUND_START_DATE , FUND_END_DATE)
VALUES ( SEQ_STORYFUNDING_POST_NO.NEXTVAL ,'user02' ,'ȣ����' ,0 ,'010-1234-5678' ,'�۹�����' ,'���볻�� 2222�����ּ���' ,0 ,0 ,SYSDATE ,SYSDATE+30 ,100000,200,20 ,0, 10000,SYSDATE+31 , SYSDATE+61 );
    
INSERT INTO PARTICIPATE 
VALUES (seq_PARTICIPATE_PARTICIPATE_NO.nextval, 'user01', '��ı', 10002, '20190712',50000);

INSERT INTO PARTICIPATE 
VALUES (seq_PARTICIPATE_PARTICIPATE_NO.nextval, 'user02', 'ȣ����', 10003, '20190714',50000);



INSERT INTO adopt 
(board_code, post_no, id, post_title, post_content, phone, adopt_area, location, reg_date, dog_breed, 
dog_weight, dog_size, dog_gender, dog_pay, dog_status, dog_char, dog_personality, dog_date ) 
VALUES 
('AD', 10000, 'user03', '�о��׽�Ʈ1', '�׽�Ʈ�� �׽�Ʈ��', '011-2123-4567', 
'�о簡������, �׽�Ʈ' , '�о簡����ġ, �׽�Ʈ' , SYSDATE , '��������', 7.1, '1', '1', 
100000, '�ǰ�', '��������Ư¡', '�������켺��', '20190701' );
	 
INSERT INTO adopt 
(board_code, post_no, id, post_title, post_content, phone, adopt_area, location, reg_date, dog_breed, 
dog_weight, dog_size, dog_gender, dog_pay, dog_status, dog_char, dog_personality, dog_date ) 
VALUES 
('AD', 10001, 'user03', '�о��׽�Ʈ2', '�׽�Ʈ�� �׽�Ʈ��', '011-2123-4567', '�о簡������, �׽�Ʈ' , 
'�о簡����ġ, �׽�Ʈ' , SYSDATE , '��������', 7.2, '2', '2', 200000, '�ǰ���������', '��������Ư¡', '�������켺��', 
'20190702' );
	 
INSERT INTO adopt 
(board_code, post_no, id, post_title, post_content, phone, adopt_area, location, reg_date, dog_breed, 
dog_weight, dog_size, dog_gender, dog_pay, dog_status, dog_char, dog_personality, dog_date ) 
VALUES 
('AD', 10002, 'user03', '�о��׽�Ʈ3', '�׽�Ʈ�� �׽�Ʈ��', '011-2123-4567', '�о簡������, �׽�Ʈ' , 
'�о簡����ġ, �׽�Ʈ' , SYSDATE , '��������', 7.3, '3', '1', 300000, '�ǰ�', '��������Ư¡', '�������켺��', 
'20190703' );
				
INSERT INTO adopt  
(board_code, post_no, id, post_title, post_content, phone, adopt_area, location, reg_date, dog_breed, 
dog_weight, dog_size, dog_gender, dog_pay, dog_status, dog_char, dog_personality, dog_date ) 
VALUES 
('MS', 10003, 'user03', '�����׽�Ʈ1', '�׽�Ʈ�� �׽�Ʈ��', '011-2123-4567', NULL, 
'������ġ, �׽�Ʈ' , SYSDATE , '��������', 7.1, '1', '2', 100000, '�ǰ�', '��������Ư¡', '�������켺��', 
'20190701' );

INSERT INTO adopt 
(board_code, post_no, id, post_title, post_content, phone, adopt_area, location, reg_date, dog_breed, 
dog_weight, dog_size, dog_gender, dog_pay, dog_status, dog_char, dog_personality, dog_date ) 
VALUES 
('MS', 10004, 'user03', '�����׽�Ʈ2', '�׽�Ʈ�� �׽�Ʈ��', '011-2123-4567', NULL, 
'������ġ, �׽�Ʈ' , SYSDATE , '��������', 7.2, '2', '1', 100000, '�ǰ�', '��������Ư¡', '�������켺��', 
'20190702' );

INSERT INTO adopt  
(board_code, post_no, id, post_title, post_content, phone, adopt_area, location, reg_date, dog_breed, 
dog_weight, dog_size, dog_gender, dog_pay, dog_status, dog_char, dog_personality, dog_date ) 
VALUES 
('MS', 10005, 'user03', '�����׽�Ʈ3', '�׽�Ʈ�� �׽�Ʈ��', '011-2123-4567', NULL, 
'������ġ, �׽�Ʈ' , SYSDATE , '��������', 7.7, '3', '2', 100000, '�ǰ�', '��������Ư¡', '�������켺��', 
'20190703' );
				
INSERT INTO apply 
(apply_no, adopt_no, id, phone, job, addr, mate, mate_agree, raise, 
currently, plan, pay, reason, situation, time, reg_date) 
VALUES 
(11111, 10000, 'user03', '011-2123-4567', 1, 1, 2, NULL, 1, 2, '��ȹ ����', 
'������', '�׳�', '��Ȳ�� ���� ���� ����', '�ݷ��������� �� �� �ִ� �ð�', SYSDATE );
					
INSERT INTO apply  
(apply_no, adopt_no, id, phone, job, addr, mate, mate_agree, raise, 
currently, plan, pay, reason, situation, time, reg_date)  
VALUES 
(11112, 10000, 'user03', '011-2123-4567', 1, 1, 2, NULL, 1, 2, '��ȹ ����', 
'������', '�׳�', '��Ȳ�� ���� ���� ����', '�ݷ��������� �� �� �ִ� �ð�', SYSDATE );
					
INSERT INTO apply 
(apply_no, adopt_no, id, phone, job, addr, mate, mate_agree, raise, 
currently, plan, pay, reason, situation, time, reg_date)  
VALUES 
(11113, 10000, 'user03', '011-2123-4567', 1, 1, 2, NULL, 1, 2, '��ȹ ����', 
'������', '�׳�', '��Ȳ�� ���� ���� ����', '�ݷ��������� �� �� �ִ� �ð�', SYSDATE );
				
INSERT INTO BOARD 
(post_no, board_code, id, nickname, post_title, post_content, reg_date, view_count, recommend_count, route)
VALUES 
(15555, 'IS', 'user01', '��ı', 'InfoShareTestTitle' ,  'InfoShareTestContent' , SYSDATE , 1000, 1000, '37.499135, 127.022593');

INSERT INTO BOARD 
(post_no, board_code, id, nickname, post_title, post_content, reg_date, view_count, recommend_count, route)
VALUES 
(15556, 'IS', 'user02', 'ȣ����', 'InfoShareTestTitle1' ,  'InfoShareTestContent1' , SYSDATE , 1001, 1001, '38.499135, 128.022593');

INSERT INTO BOARD 
(post_no, board_code, id, nickname, post_title, post_content, reg_date, view_count, recommend_count, route)
VALUES 
(15557, 'IS', 'user03' , '�ȳ�', 'InfoShareTestTitle2' ,  'InfoShareTestContent2' , SYSDATE , 1002, 1002, '39.499135, 129.022593');

INSERT INTO BOARD 
(post_no, board_code, id, nickname, post_title, post_content, reg_date, view_count, recommend_count, route)
VALUES 
(15555, 'IS', 'testIS' , 'IS�г���', 'InfoShareTestTitle' ,  'InfoShareTestContent' , SYSDATE , 1000, 1000, '37.499135, 127.022593');

INSERT INTO BOARD 
(post_no, board_code, id, nickname, post_title, post_content, reg_date, view_count, recommend_count, route)
VALUES 
(15556, 'IS', 'testIS1' , 'IS�г���1', 'InfoShareTestTitle1' ,  'InfoShareTestContent1' , SYSDATE , 1001, 1001, '38.499135, 128.022593');

INSERT INTO BOARD 
(post_no, board_code, id, nickname, post_title, post_content, reg_date, view_count, recommend_count, route)
VALUES 
(15557, 'IS', 'testIS2' , 'IS�г���2', 'InfoShareTestTitle2' ,  'InfoShareTestContent2' , SYSDATE , 1002, 1002, '39.499135, 129.022593');

INSERT INTO BREED_PEDIA( breed_no , weight , height , avg_life, add_Info, types, characters, files, name) 
VALUES( seq_BREED_PEDIA_BREED_NO.NEXTVAL, 15.0 , 35.0 , 11 , '����� ���� �¾ ���� �˷��� ǰ���̴�', '���','�漺���� ����, �ֱ�������', 'abcde.jpg', '��������');

INSERT INTO BREED_PEDIA( breed_no , weight , height , avg_life, add_Info, types, characters, files, name) 
VALUES( seq_BREED_PEDIA_BREED_NO.NEXTVAL, 13.0 , 20.0 , 14 , '�Ӹ� ����� �ҹ��� �ݷ���', '�ݷ�', '������ �� ����, �ֱ�������, �ȶ���', 'fome.jpg', '���޶�Ͼ�');

INSERT INTO BREED_PEDIA( breed_no , weight , height , avg_life, add_Info, types, characters, files, name)
VALUES( seq_BREED_PEDIA_BREED_NO.NEXTVAL, 22.0 , 20.0 , 14 , '�Ӹ��� ũ�� �׸������� �ڴ� �����ϴ�.', '�ݷ�', '������ ��, �漶���� ����', 'bulldog.jpg', '�ҵ�'); 

INSERT INTO comments( comment_no, post_no, board_code, id, comment_content, reg_date, like_count, nickName) 
VALUES (seq_COMMENTS_COMMENT_NO.nextval, 15555, 'IS', 'user01', '1�� ��ۼ��� �ߴ޸��ϴ�!!', sysdate, 0, '��ı');

INSERT INTO comments( comment_no, post_no, board_code, id, comment_content, reg_date, like_count, nickName) 
VALUES (seq_COMMENTS_COMMENT_NO.nextval, 15556, 'IS', 'user02', '�׵ڸ� �մ� 2�� ��ۼ���!!', sysdate, 1, 'ȣ����');

INSERT INTO comments( comment_no, post_no, board_code, id, comment_content, reg_date, like_count, nickName) 
VALUES (seq_COMMENTS_COMMENT_NO.nextval, 15557, 'IS', 'user03', '���߰��մϴ� 3�� ��ۼ���!!', sysdate, 2, '�ȳ�');

INSERT INTO recomment( comment_no, recomment_no, id, recomment_content, reg_date, nickName) 
VALUES (10000, seq_RECOMMENT_RECOMMENT_NO, 'user01', '1�� ���ۼ��� �� �޸�����?!', sysdate, '��ı');

INSERT INTO recomment( comment_no, recomment_no, id, recomment_content, reg_date, nickName) 
VALUES (10001, seq_RECOMMENT_RECOMMENT_NO, 'user02', '2�� ���ۼ��� �� �޸�����?!', sysdate, 'ȣ����');

INSERT INTO recomment( comment_no, recomment_no, id, recomment_content, reg_date, nickName) 
VALUES (10002, seq_RECOMMENT_RECOMMENT_NO, 'user03', '3�� ���ۼ��� �� �޸�����?!', sysdate, '�ȳ�');