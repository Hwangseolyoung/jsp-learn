USE w3schools;

-- GROUP BY : 그룹별 갯수, 평균, 합 
-- 소계 : 한 부분만의 합계

SELECT * FROM Customers;
SELECT COUNT(CustomerID) FROM Customers;

SELECT COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country ORDER BY Country;

SELECT Country, COUNT(CustomerID) count 
FROM Customers 
GROUP BY Country 
ORDER BY count, Country;

DESC Customers;
INSERT INTO Customers(CustomerName, City)
VALUE('SON', 'Seoul');

-- 가장 많은 고객이 있는 도시(city)를 조회
SELECT City, COUNT(CustomerID) count FROM Customers
GROUP BY City
HAVING count =
(
	SELECT COUNT(CustomerID) count
	FROM Customers
	GROUP BY City
	ORDER BY count DESC
	LIMIT 1
)
;

-- GROUP BY : 2개 이상의 컬럼 사용 가능
SELECT * FROM Oders ORDER BY OrderDate;

-- 날짜별 몇개의 주문이 있는지?
SELECT OrderDate, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;

-- 날짜별, 직원별로 몇개의 주문이 있는지?
SELECT OrderDate,EmployeeID, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate, EmployeeID
ORDER BY OrderDate, EmployeeID;

-- leetcode 1693
# Write your MySQL query statement below
 SELECT date_id, make_name,
        COUNT(DISTINCT lead_id) unique_leads, 
        COUNT(DISTINCT partner_id) unique_partners
 FROM DailySales
 GROUP BY date_id, make_name;