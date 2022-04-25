USE w3school;

-- ORDER BY : 정렬 키워드(오름차순 정렬)
SELECT * FROM Customers ORDER BY ContactName;
SELECT * FROM Customers ORDER BY City;

-- ASC : 오름차순(기본A~Z)
-- DESC : 내림차순(Z~A)

-- 조회결과 ContactName 오름차순 정렬
SELECT * FROM Customers ORDER BY ContacName ASC; -- (ASC 생략가능)
-- 조회결과 ContactName 내림차순 정렬
SELECT * FROM Customers ORDER BY ContacName DESC;

-- 여러 열 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City;

-- 연습1 ) 직원(Employees)을 생일 내림차순, LastName 오름차순으로 정렬 조회
SELECT * FROM Employees ORDER BY BrithDate DESC, LastName;
-- 연습2) 고객이 있는 나라를 오름차순 정렬로 조회 (단 한번씩만 결과로 나오도록)
SELECT DISTINCT Country FROM Customers ORDER BY Country;
-- 연습3) 고객이 있는 도시를 오름차순 정렬로 조회(단 한번씩만 결과로 나오도록)
SELECT DISTINCT City FROM Customers ORDER BY City;

-- 컬럼 번호로 정렬
SELECT * FROM Customers ORDER BY 5;
-- 여러 열 기준, 컬럼 번호로 정렬
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCodem Country FROM Customers ORDER BY 3;
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCodem Country FROM Customers ORDER BY 3, 7;