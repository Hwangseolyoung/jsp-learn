USE mydb2;

-- 댓글과 게시글 지우기
SELECT * FROM Reply WHERE board_id = 17;
-- ROLLBACK
DELETE FROM Board
WHERE id = 17;
COMMIT;

-- DML : INSERT, UPDATE, DELETE
SELECT * FROM Reply WHERE board_id = 13;

SELECT * FROM Reply;