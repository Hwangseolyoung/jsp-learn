USE mydb1;

-- DEFAULT : 값이 명시되지 않았을 때 기본값
 CREATE TABLE MyTable17 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);

DESC MyTable17;

INSERT INTO MyTable17 (col1, col2) VALUES ('abc', 'def');
INSERT INTO MyTable17 (col1, col2) VALUES ('abc', NULL); -- NOT NULL이 아니므로 NULL 허용됨
INSERT INTO MyTable17 (col1) VALUES ('hi'); -- col2의 VALUE를 입력하지 않아서 기본값 들어감

SELECT * FROM MyTable17;