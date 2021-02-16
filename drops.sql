rem 실습용 테이블 제거

ALTER  TABLE  course 
    DROP  PRIMARY  KEY  CASCADE;
ALTER  TABLE  instructor 
    DROP  PRIMARY  KEY  CASCADE;
ALTER  TABLE  dept 
    DROP  PRIMARY  KEY  CASCADE;
ALTER  TABLE  emp 
    DROP  PRIMARY  KEY  CASCADE;



DROP TABLE teaches; 
DROP TABLE takes; 
DROP TABLE sal_class; 
DROP TABLE foreign_emp; 
DROP TABLE new_emp;
DROP TABLE emp;
DROP TABLE dept;

DROP TABLE course; 
DROP TABLE instructor; 
DROP TABLE pay_rate;