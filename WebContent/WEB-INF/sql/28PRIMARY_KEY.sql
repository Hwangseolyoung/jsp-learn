USE mydb1;

DESC MyTable10;

-- primary key : UNIQUE, NOT NULL 조합
-- null과 중복이 허용안됨
CREATE TABLE MyTable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC MyTable12;

CREATE TABLE MyTable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);

DESC MyTable13;

INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b'); -- 중복 허용안됨
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', null); -- null 허용안됨

SELECT * FROM MyTable13;

-- AUTO_INCREMENT : 자동으로 값 증가 (KEY가 있어야 사용가능)
-- 1부터 자동으로 1씩 증거하는 값 입력해줌 (조건 옵션을 추가하면 시작번호 변경가능함)
-- 중간에 값을 삭제하고 추가해도 빈값에 추가되는 것이 아니라 그다음 순서의 값으로 추가된다. 
CREATE TABLE MyTable18 (
	col1 INT PRIMARY KEY AUTO_INCREMENT,
    col2 VARCHAR(10)
);

INSERT INTO MyTable18 (col2) VALUE ('abcd');

SELECT * FROM MyTable18;

DELETE FROM MyTable18 WHERE col1 = 10;