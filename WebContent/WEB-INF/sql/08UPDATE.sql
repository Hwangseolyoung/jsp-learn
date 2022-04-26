USE w3schools;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;

-- UPDATE : 이미 있는 레코드들의 필드를 변경
-- UPDATE 레코트명 SET 필드명=필드값, 필드명=필드값 WHERE 조건 필드나 레코드~
UPDATE Employees
SET LastName = 'Sunja',
    FirstName = 'YuhJung'
WHERE EmployeeID = 1;

-- 예제1) 1번 고객(Customers Table)의 
-- 계약자명(ContactName)은 'Alfred Schmidt'
-- 도시(City)는 'Frankfurt'로 변경
UPDATE Customers
SET ContactName = 'Alfred Schmidt',
    City = 'Frankfurt'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

SELECT * FROM Customers WHERE Country = 'Mexico';

SELECT * FROM Products;

-- 기존 row 값을 활용 가능
UPDATE Products
SET Price = Price + 2;

DESC Employees;
SELECT * FROM Employees;