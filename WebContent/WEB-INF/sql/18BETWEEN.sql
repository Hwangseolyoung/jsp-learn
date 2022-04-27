USE w3schools;

-- BETWEEN AND : 특정 조건 사이에 일치하는 값

SELECT * FROM Employees ORDER BY BirthDate;

SELECT * FROM Employees
WHERE BirthDate >= '1960-01-01' 
  AND BirthDate <= '1969-12-31';
  
SELECT * FROM Employees
WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

SELECT * FROM Products
WHERE Price BETWEEN 20 AND 30;