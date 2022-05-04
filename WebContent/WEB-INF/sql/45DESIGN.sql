-- 제2정규형(Second Normal Form) 2NF (책 369쪽)
-- 규칙1 : 제1정규형이어야 한다.
-- 규칙2 : 부분적 함수 의존이 없다.alter
	-- 키가 아닌 열이 합성키의 일부에 종속되는 경우 (책 363쪽)
	-- 합성키를 사용할 바에는 의미없는 키컬럼을 추가하거나 테이블을 나누는것이 좋다.
    
-- 제3정규형(Third Normal Form) 3NF (책 374쪽)
-- 제2정규형이어야 한다.
-- 이행적 종속이 없다. (책 364쪽)
	-- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우
    
CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255), -- instructor_phone이 종속된다 / 위반함
    instructor_phone VARCHAR(255)
	
);

DROP TABLE courses;

CREATE TABLE courses (
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255),
    instructor_id INT, -- 강의자가 1명이라면 FOREIGN KEY로 만들어 nstructor(instructor_id)를 참조하게 한다.
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id) -- FOREIGN KEY 제약사항 추가
);

CREATE TABLE instructor (
	instructor_id INT PRIMARY KEY AUTO_INCREMENT, -- 합성키를 사용하지 않기 위해 인위적인 키 추가함
	instructor_name VARCHAR(255), 
    instructor_phone VARCHAR(255)
	
);