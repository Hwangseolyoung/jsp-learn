USE w3schools;

-- DELETE FROM 테이블명 WHERE 어떤 레코드인지
SELECT * FROM Employees;

-- WHERE 안쓰면 테이블이 삭제됨
DELETE FROM Employees; 

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE Country = 'Mexico';


SELECT * FROM Employees;
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- 프라미머리 키 : 테이블의 각 레코드를 구분해주는 컬럼
-- 각 컬럼의 값이 중복되지 않고 null도 없다(유일한 값)

DESC Customers;