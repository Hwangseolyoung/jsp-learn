USE mydb1;

-- DATE : 년월일 (최소, 최대값 있음), getDate, setDate(형변환해서 사용해야함)
-- DATETIME : 년월일 시분초, getTimeStamp, setTimeStamp(형변환해서 사용해야함)
CREATE TABLE MyTable8 (
	col1 DATE,
    col2 DATETIME
);

INSERT INTO MyTable8 (col1) 
VALUES ('2022-04-28');

SELECT * FROM MyTable8;

INSERT INTO MyTable8 (col2)
VALUES ('2022-04-28 11:12:13');
 
-- 현재시간 NOW();
SELECT NOW();

INSERT INTO MyTable8 (col1, col2) 
VALUE (NOW(), NOW());
