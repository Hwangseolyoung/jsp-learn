USE w3schools;

-- UNION : 여러 조회를 하나로 합친다(합집합)
-- 1. 여러 SELECT의 컬럼 수가 같이야함
-- 2. 각 컬럼의 데이터 타입이 유사해야 한다.(기준이 모호하다)
-- 3. 컬럼이 같은 순서이어야 한다.

SELECT LastName FROM Employees;
SELECT FirstName FROM Employees;

SELECT LastName FROM Employees
UNION
SELECT FirstName FROM Employees;

SELECT LastName, FirstName FROM Employees
UNION
SELECT CustomerName FROM Customers; -- 컬럼 수가 달라서 안됨

SELECT LastName, BirthDate FROM Employees
UNION
SELECT CustomerName, Country FROM Customers; -- ok

SELECT EmployeeID, LastName FROM Employees
UNION
SELECT ProductName, Price FROM Products;

-- UNION : 합집합(중복없음)
-- UNION ALL : 중복허용

SELECT LastName FROM Employees
UNION
SELECT FirstName FROM Employees;

SELECT LastName FROM Employees
UNION ALL
SELECT FirstName FROM Employees;

-- 2개 이상의 조회 결과를 합칠 수 있음
SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
UNION
SELECT City FROM Customers;

-- 임의의 컬럼을 추가할 수 있다.

-- leetcode 1795
# Write your MySQL query statement below

SELECT product_id, 'store1' store, store1 price
FROM Products
WHERE store1 IS NOT NULL

UNION

SELECT product_id, 'store2' store, store2 price
FROM Products
WHERE store2 IS NOT NULL

UNION

SELECT product_id, 'store3' store, store3 price
FROM Products
WHERE store3 IS NOT NULL;


SELECT * FROM Board;
