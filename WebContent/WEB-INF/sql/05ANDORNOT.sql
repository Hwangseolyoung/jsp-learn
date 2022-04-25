USE w3schools;

-- AND : 여러 조건을 추가해서 조회할 수있고
-- 각 레코드가 조건을 체크하고 모든 조건이 true일때만 출력된다.
SELECT * FROM Coustomers;
SELECT * FROM Coustomers WHERE Country = 'Brazil';
SELECT * FROM Coustomers WHERE Country = 'Brazil' AND City = 'Rio de Janeiro';

-- OR : 여러 조건을 연결해서 조회할 수 있다.
-- 조건이 하나라도 만족하면 true이다.
SELECT * FROM Coustomers WHERE Country = 'Germany' AND City = 'London';

-- NOT : 앞 조건이 true인 경우 출력된다. 
SELECT * FROM Customers WHERE Country = 'Germany';

SELECT * FROM Customers WHERE 1 = 1;
SELECT * FROM Customers WHERE Country = 'Germany' OR 1 = 1;

-- 나라명 ' OR '1' = '1'
SELECT * FROM Customers WHERE Country = '' OR '1' = '1';