USE mydb1;

-- CHAR(size) : 고정길이 문자열
-- size를 명시하지 않으면 기본값 1
CREATE TABLE MyTable4 (
	col1 CHAR, 
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

SELECT * FROM MyTable4;

INSERT INTO MyTable4 (col1)
VALUE ('a');
INSERT INTO MyTable4 (col1)
VALUE ('ab'); -- 안됨(col1:고정길이 1)

INSERT INTO MyTable4 (col3)
VALUE ('ab');
-- 고정길이를 2로 명시해서 1글자만 넣어도 2를 차지하고 있다.
INSERT INTO MyTable4 (col3)
VALUE ('b');

INSERT INTO MyTable4 (col4)
VALUE ('abcde');
INSERT INTO MyTable4 (col4)
VALUE ('abcdef'); -- 안됨
INSERT INTO MyTable4 (col4)
VALUE ('abc'); -- 3글자이지만 5글자 공간차지
INSERT INTO MyTable4 (col4)
VALUE ('가나다라마'); -- 한글 사용가능

-- 트림(trim) disable
SET sql_mode = 'PAD_CHAR_FULL_LENGTH'; 

SELECT * FROM MyTable4;

-- VARCHAR(size) : 가변길이
-- size보다 적게 입력하면 그 입력된 만큼만 공간을 차지함
CREATE TABLE MyTable5 (
	col1 CHAR(10),
    col2 VARCHAR(10)
);

-- 테이블 삭제(주의해서 사용해야함)
DROP TABLE MyTable5;

INSERT INTO MyTable5 (col1, col2)
VALUE ('a', 'a'); 

SELECT * FROM MyTable5;

INSERT INTO MyTable5 (col2)
VALUE ('0123456789');
INSERT INTO MyTable5 (col2)
VALUE ('01234567890'); -- 안됨
INSERT INTO MyTable5 (col2)
VALUE ('asdfghjkli'); -- 안됨