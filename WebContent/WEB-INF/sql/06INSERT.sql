USE w3schools;

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- INSERT INTO : 레코드 추가하기 
-- INSERT INTO 테이블명(레코드 순서대로 작성) VALUES(레코드 순서대로 value 작성)
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (92, 'Donald', 'president', 'New York', 'Seattle', '00000', 'USA');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (93, 'son', 'Heung-min', 'Tomttenum', 'London', '11111', 'UK');

-- 모든 컬럼에 데이터 입력시 컬럼명 생략가능
INSERT INTO Customers
VALUE (94, 'Cha', 'Bum', 'BundesLiga', 'Köln', '22222', 'Germany');

-- DESC : 테이블 Schem 조회(DESCRIBE)
DESCRIBE Customers;
DESC Customers;

-- auto_increment 컬럼은 insert 할 때 값 생략 가능
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Oscar', 'Isaac', 'london', 'London', 'B-999', 'UK');

INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES ('USA', 'A112', 'Seattle', 'Hotel', 'Rap Monster', 'RM');

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Jisung', 'Park', '1999-01-01', 'pic1', 'manchester united');

-- 모든 컬럼을 나열하지 않아도됨
-- 열을 생략하면 null로 남게됨
INSERT INTO Employees (LastName, FirstName, BirthDate, Notes)
VALUES ('Lee', 'sunshin', '1900-01-01', 'general');

-- NULL : 값이 없다
-- insert시 null 명시 가능
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUE ('Harry', 'Kane', '2000-01-01', NULL, 'soccer'); 
