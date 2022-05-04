USE mydb2;

-- JOIN : 두개이상의 테이블의 결합이다.(서로 참조관계가 아니거나 컬럼명이 달라도 사용가능하다)
-- 두개 테이블에서 특정 컬럼에 같은 값을 가진 레코드를 조회할 수 있다. 
-- JOIN의 종류 : INNER JOIN(교집합 가져옴) -> 테이블 작성순서는 메인테이블 부터 작성한다.
--				LEFT OUTER JOIN(왼쪽 테이블모두, 교집합), RIGHT OUTER JOIN(오른쪽 테이블모두, 교집합) -> 테이블 작성순서 중요

SELECT * FROM Board; -- 4개열, 8개행
SELECT * FROM Reply; -- 4개열, 8개행

-- 결합(Cartesian Product) : (8개열(4+4), 64개행(8*8))
-- 명시한 순서대로 결합된다.
SELECT * FROM Board JOIN Reply;
SELECT * FROM Board, Reply; -- JOIN 생략가능
SELECT * FROM Reply, Board;

-- INNER JOIN(공통분모만 가져옴)
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id;
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id;
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id;
