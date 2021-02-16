rem 실습용 테이블 생성

Create Table pay_rate (
rate 	Number(1),
pay	Number(6),
constraint pay_rate_pk Primary Key(rate));

INSERT INTO pay_rate VALUES (1,1000); 
INSERT INTO pay_rate VALUES (2,2000); 
INSERT INTO pay_rate VALUES (3,3000); 
INSERT INTO pay_rate VALUES (4,4000); 

commit;

Create Table course (
cour_id	           Number(3),
cour_name          Varchar2(20),  
days 	           Number(2),
constraint course_c_num_pk Primary key(cour_id));

INSERT INTO course VALUES (110,'컴퓨터활용',5); 
INSERT INTO course VALUES (202,'정보검색사',10); 
INSERT INTO course VALUES (305,'사무자동화',5); 
INSERT INTO course VALUES (400,'웹디자인',10); 
INSERT INTO course VALUES (550,'전산회계',10); 

commit;

Create Table    instructor (
inst_id 	Number(4),
inst_name 	Varchar2(10), 
inst_rate	Number(1),
constraint instructor_i_id_pk Primary Key(inst_id),
constraint instructor_RATE_fk Foreign Key(inst_rate)
references pay_rate(rate));

INSERT INTO instructor VALUES (1001,'김도윤',3); 
INSERT INTO instructor VALUES (1002,'문성진',3); 
INSERT INTO instructor VALUES (1003,'심은아',2); 
INSERT INTO instructor VALUES (1004,'배용진',1); 

commit;


create table teaches (
cour_id           Number(3),   
inst_id	          Number(4),                 
teach_date        Date,
constraint teaches_i_id_cour_id_t_date_pk Primary key(inst_id,cour_id,teach_date),
constraint teaches_cour_id_fk Foreign Key(cour_id) references course(cour_id),
constraint teaches_inst_id_fk Foreign Key(inst_id) references instructor(inst_id));

INSERT INTO teaches VALUES (110,1001,TO_DATE('04/17/2003','MM/DD/YYYY')); 
INSERT INTO teaches VALUES (202,1002,TO_DATE('05/10/2003','MM/DD/YYYY')); 
INSERT INTO teaches VALUES (305,1003,TO_DATE('06/02/2003','MM/DD/YYYY')); 
INSERT INTO teaches VALUES (400,1004,TO_DATE('06/30/2003','MM/DD/YYYY')); 
INSERT INTO teaches VALUES (550,1003,TO_DATE('07/15/2003','MM/DD/YYYY')); 
INSERT INTO teaches VALUES (202,1002,TO_DATE('07/30/2003','MM/DD/YYYY')); 

commit;


Create Table dept (
dept_id 	Number(3),   
dept_name 	Varchar(20),  
dept_loc        Varchar(15),
constraint dept_dept_id_pk Primary Key(dept_id));


INSERT INTO dept VALUES (100,'관리부','서울'); 
INSERT INTO dept VALUES (200,'연구부','대전'); 
INSERT INTO dept VALUES (300,'총무부','서울'); 
INSERT INTO dept VALUES (400,'영업부','인천');
INSERT INTO dept VALUES (500,'개발부','천안');

commit;


Create Table emp (
emp_id 	   Number(4), 
emp_name	       Varchar2(10) Not Null,  
job      	       Varchar2(10) Not Null,  
dept_id  	       Number(3),
sal 	               Number(4) Not Null,
bonus	               Number(4),
mgr_id	               Number(4),
hiredate              Date Not Null,
constraint emp_id_pk Primary Key(emp_id),
constraint emp_dept_id_fk Foreign key(dept_id) references dept(dept_id));  


INSERT INTO EMP VALUES (6200,'박철수','대표이사',200, 
                        9000,NULL,NULL, TO_DATE('12/17/1997','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (6311,'김대정','부장',100, 
                        6200,Null,6200, TO_DATE('12/17/1998','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7489,'민동규','세일즈',400, 
                        3700,200,6321, TO_DATE('02/20/1999','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7522,'정종철','세일즈',400, 
                        4520,300,6321,TO_DATE('02/22/1998','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (6321,'이종길','부장',400, 
                        7000,500,6200,TO_DATE('04/02/1999','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (6351,'진대준','부장',300, 
                        5850,NULL,6200,TO_DATE('05/31/2000','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7910,'이영희','경리',300, 
                        3200,NULL,6351,TO_DATE('09/01/2001','MM/DD/YYYY'));

INSERT INTO EMP VALUES (6361,'김철수','부장',200, 
                        6500,NULL,6200,TO_DATE('06/09/2000','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7878,'백기수','연구직',200, 
                        5000,NULL,6361,TO_DATE('12/09/2001','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7854,'진영진','세일즈',400, 
                        3500,0,6321,TO_DATE('09/08/2001','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7872,'이문정','사무직',100, 
                        2500,NULL,6311,TO_DATE('01/12/2001','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7920,'김마리아','사무직',300, 
                        2650,NULL,6351,TO_DATE('12/03/2001','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7901,'정동길','연구직',NULL, 
                        4500,NULL,NULL,TO_DATE('12/03/2001','MM/DD/YYYY')); 

INSERT INTO EMP VALUES (7933,'김철수','사무직',200, 
                        2500,NULL,6361,TO_DATE('01/23/2002','MM/DD/YYYY')); 


ALTER TABLE emp
ADD (CONSTRAINT emp_self_key FOREIGN KEY (mgr_id) REFERENCES emp (emp_id));


Create Table takes (
emp_id	            Number(5),
cour_id             Number(3),
take_date           Date,
grade	            Char(1),      
constraint takes_id_cour_id_pk Primary key(emp_id, cour_id),
constraint takes_emp_id_fk Foreign Key(emp_id) references emp(emp_id),
constraint takes_cour_id_fk Foreign key(cour_id) references course(cour_id));


INSERT INTO takes VALUES (7872,110,TO_DATE('04/17/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (7920,110,TO_DATE('04/17/2003','MM/DD/YYYY'),'B'); 
INSERT INTO takes VALUES (6311,202,TO_DATE('05/10/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (6351,202,TO_DATE('05/10/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (7910,305,TO_DATE('06/02/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (7933,305,TO_DATE('06/02/2003','MM/DD/YYYY'),'C'); 
INSERT INTO takes VALUES (7878,400,TO_DATE('06/30/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (7901,400,TO_DATE('06/30/2003','MM/DD/YYYY'),'A');
INSERT INTO takes VALUES (7910,550,TO_DATE('07/15/2003','MM/DD/YYYY'),'B'); 
INSERT INTO takes VALUES (7872,550,TO_DATE('07/15/2003','MM/DD/YYYY'),'C'); 
INSERT INTO takes VALUES (7489,202,TO_DATE('07/30/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (7522,202,TO_DATE('07/30/2003','MM/DD/YYYY'),'A'); 
INSERT INTO takes VALUES (7854,202,TO_DATE('07/30/2003','MM/DD/YYYY'),'B'); 
INSERT INTO takes VALUES (7910,110,TO_DATE('10/15/2003','MM/DD/YYYY'),'A'); 

commit;

create table sal_class (
class	            Number(1),                    
lbound   	Number(6),
hbound            Number(6),
constraint sal_class_pk Primary key(class));

INSERT INTO sal_class VALUES (5,700,1200); 
INSERT INTO sal_class VALUES (4,1201,1400); 
INSERT INTO sal_class VALUES (3,1401,2000); 
INSERT INTO sal_class VALUES (2,2001,3000); 
INSERT INTO sal_class VALUES (1,3001,9999); 
 
commit; 

CREATE TABLE foreign_emp (
emp_id 	    Number(4), 
emp_name    Varchar2(15) Not Null,  
job         Varchar2(15) Not Null,  
sal 	    Varchar2(5) Not Null,
hiredate    Date,
constraint foremp_id_pk Primary Key(emp_id));

INSERT INTO foreign_emp VALUES (8211,'Tom','Engineer',  '3200', TO_DATE('03/01/2003','MM/DD/YYYY')); 
INSERT INTO foreign_emp VALUES (8212,'James','Engineer', '3000',TO_DATE('03/01/2003','MM/DD/YYYY')); 
INSERT INTO foreign_emp VALUES (8213,'Mary','Engineer','2900', null); 

commit; 

CREATE TABLE new_emp (
emp_id 	   Number(4), 
emp_name	   Varchar2(10) Not Null,  
job      	               Varchar2(10),  
sal 	               Number(6,2) Not Null,
hiredate              Date,
constraint   new_emp_id_pk Primary Key(emp_id)); 


INSERT INTO new_emp VALUES (8622,'민정희', NULL,
                        1550, TO_DATE('03/01/2003','MM/DD/YYYY')); 

INSERT INTO new_emp VALUES (8329,'박민수', NULL,
                        1400, TO_DATE('03/01/2003','MM/DD/YYYY')); 

INSERT INTO new_emp VALUES (8541,'장동아', NULL,
                        1500, TO_DATE('03/01/2004','MM/DD/YYYY')); 

INSERT INTO new_emp VALUES (8732,'최영민', NULL,
                        1450, TO_DATE('03/01/2004','MM/DD/YYYY')); 

commit; 

set scan on