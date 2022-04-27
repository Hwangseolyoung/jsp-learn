USE w3schools;

-- LIKE: ~ 같은, 유사한
-- 와일드 카드 : % 0개 또는 그 이상의 캐릭터가 존재하는가, _ 1개의 캐릭터가 있다면

-- '_' : 하나의 문자
SELECT *FROM Employees;
SELECT *FROM Employees WHERE Photo LIKE 'EmpID_.pic';

-- '%' : 0개 이상의 문자
SELECT * FROM Employees WHERE LastName LIKE 'D%'; -- D로 시작하는 문자(대소문자 구분x)
SELECT * FROM Employees WHERE LastName LIKE '%n'; -- n로 끝나는 문자(대소문자 구분x)

SELECT * FROM Employees WHERE LastName LIKE '%n%'; -- n이 포함되는 문자

SELECT * FROM Customers WHERE CustomerName LIKE '_r%'; -- 2번째 문자가 r인 문자
SELECT * FROM Customers WHERE CustomerName LIKE 'a__%'; -- a로 시작하면서 3글자 이상인 문자
SELECT * FROM Customers WHERE ContactName LIKE 'a%o'; -- a로 시작해서 o끝나는 문자

SELECT * FROM Customers WHERE CustomerName NOT LIKE 'a%'; -- a로 시작하지 않는 문자

SELECT * FROM Customers WHERE City LIKE 'ber%'; -- ber로 시작하는 문자
SELECT * FROM Customers WHERE City LIKE '%es%'; -- es를 포함하는 문자
SELECT * FROM Customers WHERE City LIKE '_ondon'; -- ondon 으로 끝나는 문자
SELECT * FROM Customers WHERE City LIKE 'L_n_on'; -- L_n_on 시작 중간 끝
