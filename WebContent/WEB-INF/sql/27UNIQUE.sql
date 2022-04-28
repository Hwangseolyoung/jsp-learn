USE mydb1;

-- UNIQUE : 해당 컬럼의 값이 중복되면 안됨
CREATE TABLE MyTable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC MyTable10;

INSERT INTO MyTable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO MyTable10 (col1, col2) VALUES ('c', 'e');
INSERT INTO MyTable10 (col1, col2) VALUES ('c', 'e'); -- col2 중복안됨
INSERT INTO MyTable10 (col1, col2) VALUES ('c', null); -- not null 제약사항이 없으므로 들어감alter 
INSERT INTO MyTable10 (col1, col2) VALUES ('d', null); -- null은 값이 없으므로 중복이 아니다.

SELECT * FROM MyTable10;

-- 레코드는 순서가 없다.
-- 순서가 중요하면 조회할떼 ORDER BY를 사용해야 한다. 


-- UNIQUE, NOT NULL 조합 : primary 제약사항이다.
CREATE TABLE MyTable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC MyTable11;