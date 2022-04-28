-- 테이터베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;

-- 테이블 만들기
-- 컬럼명 테이터타입, 컬럼명 테이터타입, 컬럼명 테이터타입
CREATE TABLE MyTable1 (
	colName1 int,
    colName2 int
);

-- 테이블 구조보기
DESCRIBE MyTable1;
DESC MyTable1;
DESC mydb1.MyTable1;
-- 다른 데이터베이스 테이블을 보고싶으면 데이터베이스명.테이블명
DESC w3schools.Customers; 

-- 새로만든 테이블에 데이터 넣기
INSERT INTO MyTable1 (colName1, colName2)
VALUE (300, 500);

SELECT * FROM MyTable1;

-- 이미 있는 데이터를 사용해서 새 테이블 만들기(테이터까지 복사됨)
CREATE TABLE MyTable2 -- AS 키워드 생략됨
SELECT * FROM w3schools.Employees;

DESC MyTable2;

SELECT * FROM MyTable2;

CREATE TABLE MyTable3 AS
SELECT CustomerID, CustomerName AS Name, City, Country -- CustomerName만 별칭 Name으로 변경됨
FROM w3schools.Customers;

DESC MyTable3;

SELECT * FROM MyTable3;

DESC MyTable1;
INSERT INTO MyTable1 (colName1, colName2)
VALUE ('111', '222'); -- int 형식이면 입력가능

SELECT * FROM MyTable1;

INSERT INTO MyTable1 (colName1, colName2)
VALUE ('abc', 333); -- string 형식 오류발생