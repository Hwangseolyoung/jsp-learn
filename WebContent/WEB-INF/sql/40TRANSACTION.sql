USE mydb1;

-- TRANSACTION : 데이터베이스 관리 시스템 상호작용 업무단위

-- ex)은행의 송금 : 이 출금, 입금이 성공해야 성공한 업무이고 하나라도 실패하면 실패한 업무이다.
-- 1. A고객의 계좌의 출금
-- 2. B고객의 계좌의 입금

-- TRANSACTION의 두가지 명령어
-- COMMIT : DB에 반영(처리 과정이 모두 성공했을 때만 최종적으로 데이터베이스에 반영)
-- ROLLBACK : 데이터를 조작하기 이전으로 되돌림

SELECT * FROM Customers WHERE CustomerID;
-- 복사한 테이블이라 수정되지 않아 PRIMARY KEY 제약사항 추가함
ALTER TABLE Customers MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;

UPDATE Customers
SET CustomerName = 'SON'
WHERE CustomerID = '1';

ROLLBACK;

-- disable auto commit
SET autocommit = 0;

UPDATE Customers
SET CustomerName = 'CHA'
WHERE CustomerID = '1';

SELECT * FROM Customers WHERE CustomerID = '1';

-- 아직 commit을 하지 않았기 때문에 변경되기 전 로우로 되돌아간다.
ROLLBACK;

UPDATE Customers
SET CustomerName = 'PACK'
WHERE CustomerID = '1';

SELECT * FROM Customers WHERE CustomerID = '1';

-- commit PACK이 DB에 반영됨
COMMIT;
-- commit을 했으므로 이전 SON 상태로 돌아가지 않고 마지막 커밋 상태 PACK으로 돌아가게됨
ROLLBACK;
