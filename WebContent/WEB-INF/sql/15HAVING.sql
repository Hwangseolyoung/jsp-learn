USE w3schools;

SELECT * FROM Customers;

-- WHERE는 FROM 테이블의 각 Row를 연산하기 때문에 안된다.
-- COUNT는 그룹함수라 연산의 일부로 사용할 수 없다. 
SELECT Country, COUNT(CustomerID) count FROM Customers
WHERE count = 6
GROUP BY Country;

-- HAVING : 집합함수 결과를 조건으로 줄 수 있음
SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3;

SELECT Country, COUNT(CustomerID) count FROM Customers
GROUP BY Country
HAVING count > 3;

-- 가장 적은 고객이 있는 나라들 조회
SELECT Country FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) = (

	SELECT COUNT(CustomerID) count 
	FROM Customers
	GROUP BY Country
	ORDER BY count
	LIMIT 1
);
