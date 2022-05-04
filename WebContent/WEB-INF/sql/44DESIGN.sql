CREATE DATABASE mydb3;
USE mydb3;

-- 중복되는 값이 없도록, NULL이 생기지 않도록
-- 정규형(Normal Form)

-- 제1정규형(First Normal Form) 1NF
-- 제2정규형(Second Normal Form) 2NF
-- 제3정규형(Third Normal Form) 3NF
-- 1 정규형을 만족해야 2정규형 , 2정규형을 만족해야 3 정규형

-- 제1정규형(First Normal Form) 1NF
-- 규칙1 : 열은 원자적(atomic) 값만을 포함한다.
-- 규칙2 : 같은 데이터가 여러 열에 반복되지 말아야 한다.

-- 원자성 : 어떤 것이 더 이상 쪼개질 수 없는 성질 
-- 원자성(atomicity)은 데이터베이스 시스템에서 ACID 트랜잭션 특성 중의 하나다. 
-- 하나의 원자 트랜잭션은 모두 성공하거나 또는 실패하는 데이터베이스 운용의 집합이다

-- 이름, 주소
CREATE TABLE Person1 (
	name VARCHAR(200) PRIMARY KEY,
    address VARCHAR(200)
);

SET autocommit = 1;
INSERT INTO Person1(name, address) VALUES('A', '서울시 강남구 역삼동 111');


-- 1정규형을 만족하지 못한다면 2개의 테이블로 쪼개야한다.

CREATE TABLE toy(
	toy_id INT PRIMARY KEY,
    toy VARCHAR(255)
);

DROP TABLE toy;
CREATE TABLE toy_color (
	toy_color_id INT PRIMARY KEY AUTO_INCREMENT, -- 제2정규형 규칙에따라 합성키를 사용하지 않으려고 의미없는 키 추가함
	toy_id INT,
    color VARCHAR(255),
	FOREIGN KEY (toy_id) REFERENCES toy(toy_id)
	-- PRIMARY KEY (toy_id, color) -- 복함키, 합성키(두개의 컬럼을 합쳐서 키를 만듬)
);

