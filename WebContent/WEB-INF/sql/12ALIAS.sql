USE w3schools;

-- ALIAS : 별칭
-- 쿼리에서 컬럼이나 테이블에 다른 이름을 줄 수 있음
-- 쿼리문에 별칭을 사용했다면 JSP에서 별칭으로 조회해야한다. 

-- 조회 결과의 컬럼명이 입력되는데 AS로 별칭을 붙여줄 수 있다.
-- 실제 컬럼명이 변경되는 것이 아니라 조회할때 컬럼명만 변경되는 것이 아니다.
SELECT MIN(Price) AS smallest_price FROM Products;
SELECT MAX(Price) AS max_price FROM Products;

SELECT LastName AS name, BirthDate AS birth, Photo FROM Employees;
SELECT LastName, BirthDate, Photo FROM Employees;

-- AS 키워드는 생략이 가능하다. 
SELECT LastName name, BirthDate birth, Photo FROM Employees;

-- JOIN : 두개의 테이블을 결합하여 사용할 수 있다.
SELECT * FROM Products;
SELECT * FROM Categories;

-- JOIN
SELECT ProductName, CategoryName 
FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- 테이블에 별칭주고 조인
SELECT ProductName, CategoryName 
FROM Products AS p JOIN Categories AS c ON p.CategoryID = c.CategoryID;

-- 테이블에 별칭 줄때 AS 생략
SELECT ProductName, CategoryName 
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID;