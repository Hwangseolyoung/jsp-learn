-- --  는 한 줄 수석
-- SELECT : 테이블에 있는 데이터를 가져오는 명령문
-- FROM : 어떤 테이블인가
-- ; : 명령문 종료
-- * : 모든 column
-- 작성된 순서로 조회 결과 나옴
SELECT * FROM Customers;

-- data : table의 한 줄(row, record, entry)

-- 8개 테이블 조회하기
SELECT * FROM Categories;
SELECT * FROM Employees;
SELECT * FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Shippers;
SELECT * FROM Suppliers;

-- 특정 속성(attribute, column, field)만 조회
SELECT CustomerName, Address FROM Customers;

-- Employees 테이블에서 FirstName과 BirthDate만 조회
SELECT FirstName, BirthDate FROM Employees;

-- Employees 테이블에서 FirstName과 LastName을 조회하는데
-- FirstName이 왼쪽에 위치하도록 쿼리 작성
SELECT FirstName, LastName FROM Employees;
SELECT LastName, FirstName FROM Employees;

-- 대소문자 구분 안함(데이터베이스 Vendor, version마다 다름)
select FIRSTNAME, LASTNAME from Employees;

-- 작성 관습 : 키워드는 대문자로 작성
-- 컬럼명 : lowerCamelCase, snake_case, SNAKE_CASE





