USE mydb1;

-- CREATE TABLE : 테이블 만들기
CREATE TABLE Customers
SELECT * FROM w3schools.Customers;

DESC Customers;

-- DROP TABLE : 테이블 삭제

-- ALTER TABLE : 테이블 수정
-- ADD : 컬럼 추가
ALTER TABLE Customers
ADD Email VARCHAR(255);

ALTER TABLE Customers
ADD Email VARCHAR(255) NOT NULL DEFAULT '이메일 없음';

-- FIRST : 처음 컬럼 순서로 넣기
ALTER TABLE Customers
ADD Email VARCHAR(255) FIRST;

-- AFTER : 중간 순서로 넣기 
-- ContactName 다음순서로 들어감
ALTER TABLE Customers
ADD Email VARCHAR(255) AFTER ContactName;

-- DROP COLUMN : 컬럼 삭제
ALTER TABLE Customers
DROP COLUMN Email;

-- MODIFY COLUMN : 컬럼 수정
-- (데이터 타입 변경은 신중해야한다, 이미 있는데이터 손실발생할 수 있음)
ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(10);