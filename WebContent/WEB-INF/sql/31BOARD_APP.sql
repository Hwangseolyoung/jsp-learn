CREATE DATABASE mydb2;
USE mydb2;

-- AUTO_INCREMENT : 자동으로 번호를 추가해준다.
CREATE TABLE Board (
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
    body VARCHAR(2000) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW()

);

SELECT * FROM Board;

SET SQL_SAFE_UPDATES = 0;
UPDATE Board
SET inserted = DATE_SUB(inserted, INTERVAL 1 DAY);

DROP TABLE reply;

-- 댓글 테이블 : Board TABLE을 참조해야 댓글을 달 수 있다.
CREATE TABLE Reply (
	id INT PRIMARY KEY KEY AUTO_INCREMENT,
	board_id INT,  -- foreign key(참조키, 외래키) 참조하고 있는 테이블에 없는 값을 넣을 수 없다.
	content VARCHAR(255) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    FOREIGN KEY (board_id) REFERENCES Board(id) -- FOREIGN KEY 제약사항 추가

);

-- 테이블 관계
-- 1대1 관계 : 각 레코드가 하나씩 매칭되는 관계
-- ex) 학생(이름, 생년월일...), 학력(출신학교, 졸업년도) 1대 1 매치가 된다.

-- 1대다(1대 n)
-- ex) 게시물(게시물번호, 내용), 댓글(댓글내용) 하나의 게시물에 여러개의 댓글이 나타남

-- 다대다(n대n)
-- ex)학생(이름, 생년월일...), 회사(회사명...) 2개의 테이블이 여려개를 참조할 수 있다.
-- 다대다 관계에서는 테이블이 여러개 생성되야 한다.

SELECT * FROM Reply;
