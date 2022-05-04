USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04에 주문한 고객의 이름
SELECT * FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- concat : 문자열 연결 함수
-- 1996-07-04에 주문한 고객의 이름과 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 의 주문을 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers
SELECT o.OrderDate, e.LastName, s.ShipperName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
			 JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 에 주문한 고객과, 처리한 직원, 배송한 배송자명
-- Orders, Customers, Employees, Shippers
SELECT o.OrderDate, c.CustomerName, e.LastName, s.ShipperName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 상품명(들)
-- OrderDetails, Orders, Products
SELECT o.OrderDate, p.ProductName, od.Quantity, p.Price, (od.Quantity * p.Price) total
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08에 각 고객의 주문 총액
-- Orders, OrderDetails, Products, Customers
SELECT * FROM Orders WHERE OrderDate = '1996-07-08';

SELECT o.OrderDate, c.CustomerName, SUM(p.Price * d.Quantity) '총계'
FROM Orders o JOIN OrderDetails d ON o.OrderId = d.OrderID
			  JOIN Products p ON d.ProductID = p.ProductID
              JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID
;

-- 1966년 가장 많은 주문을 받은 직원
-- 1966년 직원별 처리한 주문 총 금액을 조회(금액이 높은 ->  낮은)
-- Employees 직원이름, OrderDetails주문내역, Products상품 몇개, 상품가격
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31';
SELECT COUNT(*) FROM Orders;

SELECT CONCAT(e.FirstName, ' ', e.LastName) name, SUM(p.Price * d.Quantity) total
FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID
				 JOIN OrderDetails d ON o.OrderId = d.OrderID
				 JOIN Products p ON d.ProductID = p.ProductID
WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY e.EmployeeID
ORDER BY 2 DESC
;

-- 가장 많은 상품 수량이 팔린 카테고리(높은 ->  낮은)
-- Products 상품, OrderDetails 오더 상세, Categories 카테고리
SELECT c.CategoryID, c.CategoryName, sum(d.Quantity) total
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
				JOIN OrderDetails d ON p.ProductID = d.ProductID
GROUP BY c.CategoryID
ORDER BY total DESC
;

-- '1996년 n월' 판매기간별
-- Products 상품, OrderDetails 오더 상세, Orders 오더, Categories 카테고리
SELECT c.CategoryID, c.CategoryName, sum(d.Quantity) total
FROM Products p JOIN OrderDetails d ON p.ProductID = d.ProductID
				JOIN Orders o ON d.OrderID = o.OrderID -- OrderDate 컬럼이 있는 Orders 테이블 추가
                JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07' -- 입력날짜별로 다르게 조회됨
GROUP BY c.CategoryID
ORDER BY total DESC
;

-- '1996년 8월' 판매기간별 (판매되지 않은 상품은 0으로 표기)
-- Products 상품, OrderDetails 오더 상세, Orders 오더, Categories 카테고리
SELECT c.CategoryID, c.CategoryName, sum(IFNULL(d.Quantity, 0)) total
FROM Products p JOIN OrderDetails d ON p.ProductID = d.ProductID
				JOIN Orders o ON d.OrderID = o.OrderID
								AND o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07'
                RIGHT JOIN Categories c ON c.CategoryID = p.CategoryID
-- WHERE o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07' 
GROUP BY c.CategoryID
ORDER BY total DESC
;