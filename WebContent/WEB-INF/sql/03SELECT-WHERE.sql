USE w3schools;

SELECT * FROM Employees;
SELECT FirstName FROM Employees;
SELECT CustomerName, address FROM Customers;
SELECT Address, Customers FROM Customers;

-- WHERE : 어떤 Row(records)를 선택할지 결정하는 키워드
-- 특정 조건에 만족하는지에 따라서 Row(records)가 걸러진다. 
-- = : 같다(할당x)
-- '' : 문자열 값을 사용할 때(작은따옴표)
-- 작은따옴표(x) : 수 형식의 자료, 컬럼명, 테이블명, 키워드

-- 예제1) 나라가 멕시코인 고객들 조회
SELECT * FROM Customers
WHERE Country = 'Mexico';

-- 예제2) 나라가 독일인 고객들 조회
SELECT * 
FROM Customers
WHERE Country = 'Germany';

-- 예제3) 고객ID가 1번인 고객조회
SELECT * FROM Customers WHERE CustomerID = 1;
SELECT * FROM Customers WHERE CustomerID = 90; -- 수형식은 작은따옴표 안씀, 그러나 사용해도 됨
SELECT * FROM Customers WHERE CustomerID = '1';
SELECT * FROM Customers WHERE Country = Germany; -- 문자형식은 작은따옴표 꼭 써야함

-- 예제4) 1번 고객의 이름 조회
SELECT CustomerName FROM Customers WHERE CustomerID = 1;

SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 1;

SELECT FirstName, LastName, BirthDate FROM Employees WHERE EmployeeID = 1;

DESC Employees;

SELECT FirstName, LastName, BirthDate FROM Employees;

-- city = London
SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE City = 'London';