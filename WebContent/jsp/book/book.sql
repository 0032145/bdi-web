
/* Drop Triggers */

DROP TRIGGER TRI_book_info_book_num;



/* Drop Tables */

DROP TABLE book_info CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_book_info_book_num;




/* Create Sequences */

CREATE SEQUENCE SEQ_book_info_book_num INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE book_info
(
	book_num number(10,0) NOT NULL,
	book_name varchar2(150) NOT NULL,
	book_author varchar2(150) NOT NULL,
	book_genre varchar2(300) NOT NULL,
	book_price number(10,0) NOT NULL,
	book_company varchar2(300) NOT NULL,
	book_date number(8) NOT NULL,
	PRIMARY KEY (book_num)
);



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_book_info_book_num BEFORE INSERT ON book_info
FOR EACH ROW
BEGIN
	SELECT SEQ_book_info_book_num.nextval
	INTO :new.book_num
	FROM dual;
END;

/




