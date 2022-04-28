USE mydb1;

-- CHECK : 입력되는 값을 검사 (조건 맞으면 입력)
CREATE TABLE MyTable14 (
	col1 INT,
    col2 INT CHECK (col2 > 0)
);

DESC MyTable14;

INSERT INTO MyTable14 (col1, col2) VALUES (3, 3);
INSERT INTO MyTable14 (col1, col2) VALUES (-3, 3);
INSERT INTO MyTable14 (col1, col2) VALUES (3, -3); -- 안됨 0보다 작음

SELECT * FROM MyTable14;

-- 테이블 만들때 사용했던 명령문을 확인해볼 수 있다. 
SHOW CREATE TABLE MyTable14;

CREATE TABLE `MyTable14` (
   `col1` int(11) DEFAULT NULL,
   `col2` int(11) DEFAULT NULL CHECK (`col2` > 0)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 ;
 
-- backtick : 컬럼명이 키워드명과 동일하게 만들고 싶을때 사용함  
 CREATE TABLE MyTable16 (
	`unique` VARCHAR(10)
);

SELECT * FROM MyTable16;