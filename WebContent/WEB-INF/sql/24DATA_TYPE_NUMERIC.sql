USE mydb1;

-- int(size) :size는 출력시 적용됨
CREATE TABLE MyTable6 (
	col1 int,
    col2 int(3)
);

-- 최대, 최소값 사이만 가능
INSERT INTO MyTable6 (col1)
VALUE (123456789); 
INSERT INTO MyTable6 (col1)
VALUE (3333); 
INSERT INTO MyTable6 (col2)
VALUE (123); 
INSERT INTO MyTable6 (col2)
VALUE (1234); 
INSERT INTO MyTable6 (col1)
VALUE (3.14);

SELECT * FROM MyTable6;

-- DEC : 소수가 있는 수 
-- DEC(size, d) : size=총길이, d=소수점이하수의 길이
CREATE TABLE MyTable7 (
	col1 DEC(3, 2),
    col2 DEC(5, 1)
);

SELECT * FROM MyTable7;

INSERT INTO MyTable7 (col1)
VALUE (3.14);
INSERT INTO MyTable7 (col1)
VALUE (13.14); -- 안됨 총길이 3 넘김
INSERT INTO MyTable7 (col1)
VALUE (3.146); -- 마지막 소숫점 잘라서 들어가거나 반올림해서 들어감

INSERT INTO MyTable7 (col2)
VALUE (1234.5); -- 소숫점 1자리라고 명시했기때문에 나머지 잘림
INSERT INTO MyTable7 (col2)
VALUE (11234.522); -- 안됨 총길이 5 넘김