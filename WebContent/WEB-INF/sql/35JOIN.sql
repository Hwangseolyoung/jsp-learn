USE w3schools;

SELECT * FROM Products;

-- 각 카테고리별 상품 수
SELECT CategoryID, Count(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, Count(p.ProductID) 
FROM Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID 
GROUP BY c.CategoryName;

-- 고객별 주문 건수
-- 조회컬럼명(고객명, 주문수)
-- 단, 주문하지 않은 고객은 나오지 않음
SELECT c.CustomerID, c.CustomerName, Count(o.OrderID) AS NumOfOrders -- Count 별칭 사용
FROM Customers c JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 3 DESC;


