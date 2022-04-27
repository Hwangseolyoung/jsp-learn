USE w3schools;

-- IN : 조건에 맞는게 한 개라도 있으면 true, 없으면 false

SELECT * FROM Customers
WHERE City = 'Berlin'
   OR City = 'London'
;

SELECT * FROM Customers
WHERE City IN ('Berlin', 'London');

-- Suppliers 테이블의 City의 값과 일치하는 Customers City의 레코드가 있다면 조회 결과에 나옴
SELECT City FROM Suppliers;
SELECT * FROM Customers
WHERE City IN (SELECT City FROM Suppliers);

-- NOT : 동일한 값 빼고 조회
SELECT * FROM Customers
WHERE City NOT IN ('Berlin', 'London');

SELECT City FROM Suppliers;

SELECT * FROM Customers
WHERE City NOT IN (SELECT City FROM Suppliers);