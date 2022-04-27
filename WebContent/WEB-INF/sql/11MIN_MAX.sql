USE w3schools;

SELECT * FROM Products;
SELECT * FROM Products ORDER BY Price;

-- MIN, MAX : 수, 문자열(사전순), 날짜 형식 모두 조회 가능
SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;

SELECT MIN(LastName) FROM Employees;
SELECT MAX(LastName) FROM Employees;

SELECT MIN(BirthDate) FROM Employees; 
SELECT MAX(BirthDate) FROM Employees;

-- 조건 컬럼만 조회하는 것이 아니라 다른 로우들도 함께 조회 가능하다.
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);

SELECT * FROM Employees ORDER BY BirthDate LIMIT 1;

-- 문제) 가장 가격이 비싼 상품의 이름을 조회
SELECT ProductName FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);
SELECT ProductName FROM Products ORDER BY Price DESC LIMIT 1;

