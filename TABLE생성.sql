CREATE TABLE 취미코드(
 코드번호 	CHAR(4),
 취미명   	VARCHAR2(20) UNIQUE,
 취미유형 	VARCHAR2(20) DEFAULT '기타' NOT NULL ,
 CONSTRAINT 취미코드_PK PRIMARY KEY (코드번호)
);

INSERT INTO 취미코드 VALUES (1, '농구', '운동/스포츠');
INSERT INTO 취미코드 VALUES (2, '축구', '운동/스포츠');
INSERT INTO 취미코드 VALUES (3, '식도락', '아웃도어/여행');
INSERT INTO 취미코드 VALUES (4, '영화감상', '영화');
INSERT INTO 취미코드 VALUES (5, '독서', '인문학/책/글');
INSERT INTO 취미코드 VALUES (6, '대중문화', '문화/공연');
INSERT INTO 취미코드 VALUES (7, '그래픽디자인', '디자인');
INSERT INTO 취미코드 VALUES (8, '한식', '요리/음료');
INSERT INTO 취미코드 VALUES (9, '밸리댄스', '댄스/무용');
INSERT INTO 취미코드 VALUES (10, '무도회', '사교/인맥');
INSERT INTO 취미코드 VALUES (11,'회화', '디자인');
INSERT INTO 취미코드 VALUES (12, '도자기', '공예/만들기');
INSERT INTO 취미코드 VALUES (13, '스포츠댄스', '댄스/무용');
INSERT INTO 취미코드 VALUES (14, '탱고', '댄스/무용');
INSERT INTO 취미코드 VALUES (15, '피아노', '음악/악기');
INSERT INTO 취미코드 VALUES (16, '기타', '음악/악기');
INSERT INTO 취미코드 VALUES (17, '클라리넷', '음악/악기');
INSERT INTO 취미코드 VALUES (18, '일본어', '외국/언어');
INSERT INTO 취미코드 VALUES (19, '러시아어', '외국/언어');
INSERT INTO 취미코드 VALUES (20, '큐브', '기타');



CREATE TABLE 회원 (  
 ID                	VARCHAR2(20) PRIMARY KEY,
 이름             	VARCHAR2(20) NOT NULL, 
 활동지역       	VARCHAR2(10) NOT NULL, 
 성별            	CHAR(1)	NOT NULL CHECK(성별 IN ('M', 'F')),
 주민등록번호 	CHAR(14)	 UNIQUE,
 주소          	VARCHAR2(60),
 휴대폰번호          CHAR(13)  NOT  NULL
 );

INSERT INTO 회원 VALUES ('rnans33', '정준욱','대구시', 'M', '940428-1111111', '주소주소', '010-8990-7757'); 
INSERT INTO 회원 VALUES ('rla1234', '최영재','천안시', 'M', '941219-1111111', '병천면 동남구 가전리 한국기술교육대학교', '010-5555-5555'); 
INSERT INTO 회원 VALUES ('dkdlel1', '김가가','서울시', 'F', '941220-2111111', '삼천동', '010-3555-3555');
INSERT INTO 회원 VALUES ('dkdlel2', '김가나','부천시', 'M', '941221-1111111', '부안동', '010-4555-3555');
INSERT INTO 회원 VALUES ('dkdlel3', '김가다','서울시', 'M', '941222-1111111', '상암동', '010-5555-3555');
INSERT INTO 회원 VALUES ('dkdlel4', '김가라','평택시', 'M', '941223-1111111', '부암동', '010-6555-3555');
INSERT INTO 회원 VALUES ('dkdlel5', '김가마','청주시', 'F', '941224-2111111', '평창동', '010-7555-3555');
INSERT INTO 회원 VALUES ('dkdlel6', '이가바','용인시', 'M', '941225-1111111', '무악동', '010-8555-3555');
INSERT INTO 회원 VALUES ('dkdlel7', '김가사','서울시', 'F', '941226-2111111', '교남동', '010-9555-3555');
INSERT INTO 회원 VALUES ('dkdlel8', '김가아','용인시', 'F', '941227-2111111', '종로1가', '010-0555-3555');
INSERT INTO 회원 VALUES ('dkdlel9', '김가자','대구시', 'M', '941228-1111111', '혜화동', '010-3255-3555');
INSERT INTO 회원 VALUES ('dkdlel10', '김가차','대전시', 'F', '941229-2111111', '창신제1동', '010-3355-3555');
INSERT INTO 회원 VALUES ('dkdlel11', '김가카','화천시', 'F', '941230-2111111', '명동', '010-3455-3555');
INSERT INTO 회원 VALUES ('dkdlel12', '김가타','안천시', 'F', '941231-2111111', '을지로동', '010-3555-3555');
INSERT INTO 회원 VALUES ('dkdlel13', '김가파','부산시', 'F', '941202-2111111', '청구동', '010-3655-3555');
INSERT INTO 회원 VALUES ('dkdlel14', '김가하','광주시', 'M', '941203-1111111', '중림동', '010-3755-3555');
INSERT INTO 회원 VALUES ('dkdlel15', '김나가','울산시', 'F', '941204-2111111', '용문동', '010-3855-3555');
INSERT INTO 회원 VALUES ('dkdlel16', '김나나','서울시', 'M', '941205-1111111', '응동동', '010-3955-3555');
INSERT INTO 회원 VALUES ('dkdlel17', '김나다','광주시', 'M', '941206-1111111', '중곡제4동', '010-3055-3555');
INSERT INTO 회원 VALUES ('dkdlel18', '김나라','제주시', 'M', '941207-1111111', '광장동', '010-3255-3555');





CREATE TABLE 회원취미(
 회원ID 		VARCHAR2(20),
 취미코드번호   	CHAR(4) ,
 CONSTRAINT 회원취미_PK PRIMARY KEY (회원ID, 취미코드번호),
 CONSTRAINT 회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID),
 CONSTRAINT 취미코드번호_FK FOREIGN KEY (취미코드번호) REFERENCES 취미코드(코드번호)
);
 
INSERT INTO 회원취미 VALUES ('rnans33',2); 
INSERT INTO 회원취미 VALUES ('rla1234',3); 
INSERT INTO 회원취미 VALUES ('dkdlel1',1);
INSERT INTO 회원취미 VALUES ('dkdlel2',2);
INSERT INTO 회원취미 VALUES ('dkdlel3',3);
INSERT INTO 회원취미 VALUES ('dkdlel4',4);
INSERT INTO 회원취미 VALUES ('dkdlel5',5);
INSERT INTO 회원취미 VALUES ('dkdlel6',10);
INSERT INTO 회원취미 VALUES ('dkdlel7',8);
INSERT INTO 회원취미 VALUES ('dkdlel8',15);
INSERT INTO 회원취미 VALUES ('dkdlel9',3);
INSERT INTO 회원취미 VALUES ('dkdlel10',5);
INSERT INTO 회원취미 VALUES ('dkdlel11',8);
INSERT INTO 회원취미 VALUES ('dkdlel12',9);
INSERT INTO 회원취미 VALUES ('dkdlel13',8);
INSERT INTO 회원취미 VALUES ('dkdlel14',1);
INSERT INTO 회원취미 VALUES ('dkdlel15',13);
INSERT INTO 회원취미 VALUES ('dkdlel16',14);
INSERT INTO 회원취미 VALUES ('dkdlel17',17);
INSERT INTO 회원취미 VALUES ('dkdlel18',20);






CREATE TABLE 멘토정보(
 멘토번호  	NUMBER(8),
 멘토ID   		VARCHAR2(20) NOT NULL, 
 별점		NUMBER(2,1) CHECK(별점 BETWEEN 1.0 AND 5.0),
 취미경력		NUMBER(2) NOT NULL CHECK( 취미경력 >= 0),
 CONSTRAINT 멘토정보_PK PRIMARY KEY (멘토번호),
 CONSTRAINT 멘토ID_FK FOREIGN KEY (멘토ID) REFERENCES 회원(ID)
);

INSERT INTO 멘토정보 VALUES (1, 'rnans33', 3, 2);
INSERT INTO 멘토정보 VALUES (2, 'dkdlel1', 4.2, 7);
INSERT INTO 멘토정보 VALUES (3, 'dkdlel13', 5, 5);
INSERT INTO 멘토정보 VALUES (4, 'dkdlel6', 1, 2);
INSERT INTO 멘토정보 VALUES (5, 'dkdlel8', 3.2, 5);







CREATE TABLE 소모임( 
    소모임번호  NUMBER(8),
    소모임이름  VARCHAR(20) NOT NULL UNIQUE,
    모임등급    VARCHAR(4) DEFAULT '블루' NOT NULL CHECK(모임등급 IN('블루', '옐로', '레드')),
    지역        VARCHAR(8) NOT NULL,
    대표이미지  VARCHAR2(100),
    인증횟수    NUMBER(8) DEFAULT 0,
    취미코드번호 CHAR(4),
    CONSTRAINT 소모임_PK PRIMARY KEY (소모임번호),
    CONSTRAINT 소모임취미_FK FOREIGN KEY (취미코드번호) REFERENCES 취미코드(코드번호)
);

INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(1,'블루스톤', '청주시','C:\Users\YEONGJAE\DOWNLOAD\JPG1',1);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(2,'갈라티코', '서울시','C:\Users\YEONGJAE\DOWNLOAD\JPG2',2);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(3,'식샤합시다', '부천시','C:\Users\YEONGJAE\DOWNLOAD\JPG3',3);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(4,'무비트렌더', '서울시','C:\Users\YEONGJAE\DOWNLOAD\JPG4',4);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(5,'에픽테토스', '평택시','C:\Users\YEONGJAE\DOWNLOAD\JPG5',5);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(6,'컬쳐팝', '용인시','C:\Users\YEONGJAE\DOWNLOAD\JPG6',6);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(7,'아트클랜', '대구시','C:\Users\YEONGJAE\DOWNLOAD\JPG7',7);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(8,'도담', '대전시','C:\Users\YEONGJAE\DOWNLOAD\JPG8',8);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(9,'밸리온파이어', '화천시','C:\Users\YEONGJAE\DOWNLOAD\JPG9',9);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(10,'마스커레이드', '대구시','C:\Users\YEONGJAE\DOWNLOAD\JPG10',10);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(11,'그림조아', '대구시','C:\Users\YEONGJAE\DOWNLOAD\JPG11',11);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(12,'POT', '부산시','C:\Users\YEONGJAE\DOWNLOAD\JPG12',12);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(13,'댄스댄스', '용인시','C:\Users\YEONGJAE\DOWNLOAD\JPG13',13);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(14,'이탈리안잡', '대전시','C:\Users\YEONGJAE\DOWNLOAD\JPG14',14);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(15,'피아노사랑', '서울시','C:\Users\YEONGJAE\DOWNLOAD\JPG15',15);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(16,'하모닉스', '천안시','C:\Users\YEONGJAE\DOWNLOAD\JPG16',16);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(17,'징징이', '울산시','C:\Users\YEONGJAE\DOWNLOAD\JPG17',17);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(18,'오하요우', '서울시','C:\Users\YEONGJAE\DOWNLOAD\JPG18',18);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(19,'홍차', '서울시','C:\Users\YEONGJAE\DOWNLOAD\JPG19',19);
INSERT INTO 소모임 (소모임번호,소모임이름,지역,대표이미지,취미코드번호) VALUES(20,'큐비즘', '서울시','C:\Users\YEONGJAE\DOWNLOAD\JPG20',20);







CREATE TABLE 대여장소(
     대여장소번호 NUMBER(4),
     지역         VARCHAR2(10) NOT NULL,
     상세주소     VARCHAR2(60) NOT NULL,
     대여용도     VARCHAR2(10) NOT NULL,
     시간단위금액 NUMBER(6) NOT NULL CHECK(시간단위금액>=1000),
     일단위금액   NUMBER(8) NOT NULL CHECK(일단위금액>=1000),
     월단위금액   NUMBER(10) NOT NULL CHECK(월단위금액>=1000),
     수용인원     NUMBER(3) CHECK(수용인원 BETWEEN 1 AND 100),
     대표이미지   VARCHAR2(100) NOT NULL,
     CONSTRAINT 대여장소_PK PRIMARY KEY (대여장소번호)
);

INSERT INTO 대여장소 VALUES(1,'청주시','상당구', '파티룸',3000,50000,600000,6,('C:\Users\yeongjae\Desktop\capture1'));
INSERT INTO 대여장소 VALUES(2,'서울시','종로1가', '공연장',1000,20000,300000,6,('C:\Users\yeongjae\Desktop\capture2'));
INSERT INTO 대여장소 VALUES(3,'서울시','광화문', '강당',3000,3000,300000,6,('C:\Users\yeongjae\Desktop\capture3'));
INSERT INTO 대여장소 VALUES(4,'대구시','북구', '연습실',1000,20000,200000,6,('C:\Users\yeongjae\Desktop\capture4'));
INSERT INTO 대여장소 VALUES(5,'서울시','합정', '모던룸',2000,2000,100000,6,('C:\Users\yeongjae\Desktop\capture5'));
INSERT INTO 대여장소 VALUES(6,'서울시','홍대', '작업실',4000,10000,20000,6,('C:\Users\yeongjae\Desktop\capture6'));
INSERT INTO 대여장소 VALUES(7,'서울시','홍대', '루프탑',1000,2000,30000,6,('C:\Users\yeongjae\Desktop\capture7'));
INSERT INTO 대여장소 VALUES(8,'서울시','이태원한남', '펜트하우스',4000,10000,200000,6,('C:\Users\yeongjae\Desktop\capture8'));
INSERT INTO 대여장소 VALUES(9,'서울시','합정', '실험실',1000,2000,20000,6,('C:\Users\yeongjae\Desktop\capture9'));
INSERT INTO 대여장소 VALUES(10,'서울시','광화문종로', '책방',4000,30000,300000,6,('C:\Users\yeongjae\Desktop\capture10'));
INSERT INTO 대여장소 VALUES(11,'서울시','서울숲성수동', '워킹',10000,10000,100000,6,('C:\Users\yeongjae\Desktop\capture11'));
INSERT INTO 대여장소 VALUES(12,'인천시','연수구', '라운지',3000,20000,300000,6,('C:\Users\yeongjae\Desktop\capture12'));
INSERT INTO 대여장소 VALUES(13,'서울시','영등포구', '작업실',3000,50000,400000,6,('C:\Users\yeongjae\Desktop\capture13'));
INSERT INTO 대여장소 VALUES(14,'전라북도','완주군', '오피스',3000,20000,100000,6,('C:\Users\yeongjae\Desktop\capture14'));
INSERT INTO 대여장소 VALUES(15,'전주시','완산구', '오피스',3000,4000,100000,6,('C:\Users\yeongjae\Desktop\capture15'));
INSERT INTO 대여장소 VALUES(16,'서울시','마포구', '카페',3000,40000,100000,6,('C:\Users\yeongjae\Desktop\capture16'));
INSERT INTO 대여장소 VALUES(17,'서울시','강남', '스튜디오',3000,4000,30000,6,('C:\Users\yeongjae\Desktop\capture17'));
INSERT INTO 대여장소 VALUES(18,'서울시','마포구', '세미나실',1200,4000,10000,6,('C:\Users\yeongjae\Desktop\capture18'));
INSERT INTO 대여장소 VALUES(19,'대전시','대덕구', '카페',6000,30000,400000,6,('C:\Users\yeongjae\Desktop\capture19'));
INSERT INTO 대여장소 VALUES(20,'서울시','금천구', '카페',3000,50000,120000,6,('C:\Users\yeongjae\Desktop\capture20'));






CREATE TABLE 강사 (
 강사번호            NUMBER(8),
 이름          	     VARCHAR2(20), 
 주민등록번호        CHAR(14) NOT NULL UNIQUE,
 휴대폰번호          CHAR(14) NOT NULL,
 주소		     VARCHAR2(60),
 성별      	     CHAR(1) NOT NULL CHECK(성별 IN ('M', 'F')),
 강사등급	     CHAR(1) DEFAULT 'C' CHECK(강사등급 IN('A', 'B', 'C')) NOT NULL,
 활동지역	     VARCHAR2(10) NOT NULL,
 취미경력     	     NUMBER(3) DEFAULT 0 CHECK(취미경력 >= 0),
 온_오프라인강의여부 VARCHAR2(12) NOT NULL CHECK(온_오프라인강의여부 IN('온라인', '오프라인', '온_오프라인')),
 별점		     NUMBER(2) CHECK(별점 BETWEEN 1.0 AND 5.0),
 취미코드번호	     CHAR(4) NOT NULL,
 CONSTRAINT  강사_PK  PRIMARY KEY (강사번호),
 CONSTRAINT  강사취미_FK  FOREIGN KEY (취미코드번호) REFERENCES 취미코드(코드번호)
);

INSERT INTO 강사 VALUES (1, '박종원','980511-1394311', '010-4132-6789', '청주시 가구', 'M', 'C', '충청북도', 1, '오프라인', 3.1, 1);
INSERT INTO 강사 VALUES (2, '김태우','950511-1394311', '010-4133-6790', '부천시 나구', 'M', 'B', '경기도', 6, '오프라인', 3.2, 2);
INSERT INTO 강사 VALUES (3, '백종원','890811-1399311', '010-4134-6800', '대구시 다구', 'M', 'B', '경기도', 7, '오프라인', 2.8, 3);
INSERT INTO 강사 VALUES (4, '박건우','760911-1398311', '010-4135-6689', '청주시 라구', 'M', 'A', '용암도', 13, '온_오프라인', 5.0, 4);
INSERT INTO 강사 VALUES (5, '이천희','881011-1397311', '010-4136-6787', '서울시 마구', 'M', 'A', '경기도', 16, '온라인', 2.5, 5);
INSERT INTO 강사 VALUES (6, '아이유','871211-2396311', '010-5137-7789', '부천시 바구', 'F', 'C', '경기도', 3, '온라인', 2.3, 6);
INSERT INTO 강사 VALUES (7, '레드벨','670621-2395311', '010-6138-8089', '대구시 사구', 'F', 'B', '경기도', 9, '온_오프라인', 3.2, 7);
INSERT INTO 강사 VALUES (8, '강수지','921111-2394911', '010-7139-7089', '청주시 아구', 'F', 'C', '용암도', 4, '오프라인', 2.2, 8);
INSERT INTO 강사 VALUES (9, '삽자루','890511-1394811', '010-8140-9889', '청주시 자구', 'M', 'B', '용암도', 7, '오프라인', 1.2, 9);
INSERT INTO 강사 VALUES (10, '신승범','830514-1395311', '010-9132-5564', '부천시 차구', 'M', 'B', '경기도', 7, '온_오프라인', 4.3, 10);
INSERT INTO 강사 VALUES (11, '홍경텍','830707-1397311', '010-4232-4453', '서울시 카구', 'M', 'A', '경기도', 10, '온_오프라인', 2.2, 11);
INSERT INTO 강사 VALUES (12, '문제인','820523-1395311', '010-4242-2321', '청주시 타구', 'M', 'A', '경기도', 12, '오프라인', 4.7, 12);
INSERT INTO 강사 VALUES (13, '박지수','930511-2391311', '010-4252-7544', '부천시 파구', 'F', 'C', '경기도', 2, '오프라인', 3.8, 13);
INSERT INTO 강사 VALUES (14, '유담경','900511-1392311', '010-4262-4534', '청주시 하구', 'M', 'B', '경기도', 8, '오프라인', 3.0, 14);
INSERT INTO 강사 VALUES (15, '정희철','890501-1393311', '010-4272-8908', '부천시 거구', 'M', 'A', '경기도', 11, '온_오프라인', 2.0, 15);
INSERT INTO 강사 VALUES (16, '남궁승균','840821-1404311', '010-4282-0092', '청주시 너구', 'M', 'A', '충청북도', 12, '온라인', 2.6, 16);
INSERT INTO 강사 VALUES (17, '남궁민','790301-1414311', '010-4292-1214', '대구시 더구', 'M', 'A', '경기도', 17, '오프라인', 4.9, 17);
INSERT INTO 강사 VALUES (18, '이진','860101-1434311', '010-6575-1124', '대구시 러구', 'M', 'A', '경기도', 10, '온라인', 1.7, 18);
INSERT INTO 강사 VALUES (19, '민정규','880231-2404311', '010-8235-7795', '청주시 머구', 'F', 'C', '충청북도', 3, '온_오프라인', 3.4, 19);
INSERT INTO 강사 VALUES (20, '박지산','891225-1384311', '010-7723-1235', '서울시 버구', 'M', 'C', '경기도', 2, '온_오프라인', 2.7, 20);
INSERT INTO 강사 VALUES (21, '김원홍','891225-1324311', '010-5943-1129', '서울시 남구', 'M', 'B', '서울시', 5, '온_오프라인', 4.2, 1);
INSERT INTO 강사 VALUES (22, '홍지표','921225-1384311', '010-6965-3281', '서울시 북구', 'M', 'B', '서울시', 6, '온_오프라인', 3.8, 1);
INSERT INTO 강사 VALUES (23, '박주찬','851225-1384311', '010-3982-3028', '서울시 온구', 'M', 'C', '서울시', 2, '온_오프라인', 3.5, 1);
INSERT INTO 강사 VALUES (24, '공일영','801225-1384311', '010-1205-2023', '서울시 카구', 'M', 'A', '서울시', 12, '온_오프라인', 2.9, 1);
INSERT INTO 강사 VALUES (25, '문초용','771225-1384311', '010-2023-4987', '서울시 기구', 'M', 'A', '서울시', 15, '온_오프라인', 2.8, 1);





















CREATE TABLE 온라인강좌 (
 온라인강좌번호      NUMBER(8),
 강좌이름            VARCHAR2(30) NOT NULL UNIQUE, 
 수강료              NUMBER(7) NOT NULL CHECK(수강료>=0),
 강의개설일자 	     DATE NOT NULL,
 총강의시간	     NUMBER(5) NOT NULL CHECK(총강의시간>=0),
 관리자승인유무      CHAR(1) DEFAULT 'N' NOT NULL CHECK(관리자승인유무 IN('Y', 'N')),
 별점		     NUMBER(2,1) CHECK(별점 BETWEEN 1.0 AND 5.0),
 취미코드번호	     CHAR(4) NOT NULL,
 CONSTRAINT  온라인강좌_PK  PRIMARY KEY (온라인강좌번호),
 CONSTRAINT  온라인취미_FK  FOREIGN KEY (취미코드번호) REFERENCES 취미코드(코드번호)); 
 
INSERT INTO 온라인강좌 VALUES (1, '농구잘하는법', 5000, TO_DATE('2018/05/23','YYYY/MM/DD'), 2, 'Y', 5.0, 1);
INSERT INTO 온라인강좌 VALUES (2, '축구잘하는법', 5000, TO_DATE('2017/03/12','YYYY/MM/DD'), 3, 'N', 2.1, 2);
INSERT INTO 온라인강좌 VALUES (3, '식도락101', 7000, TO_DATE('2017/02/22','YYYY/MM/DD'), 3, 'Y', 3.2, 3);
INSERT INTO 온라인강좌 VALUES (4, '영화의역사', 6000, TO_DATE('2014/03/24','YYYY/MM/DD'), 1, 'Y', 4.2, 4);
INSERT INTO 온라인강좌 VALUES (5, '독서에좋은이야기', 5000, TO_DATE('2015/04/22','YYYY/MM/DD'), 4, 'N', 2.3, 5);
INSERT INTO 온라인강좌 VALUES (6, '대중문화흐름읽기', 5000, TO_DATE('2016/04/10','YYYY/MM/DD'), 4, 'Y', 3.1, 6);
INSERT INTO 온라인강좌 VALUES (7, '태블릿수업', 20000, TO_DATE('2013/01/23','YYYY/MM/DD'), 3, 'N', 1.2, 7);
INSERT INTO 온라인강좌 VALUES (8, '한식의역사', 15000, TO_DATE('2012/05/23','YYYY/MM/DD'), 2, 'Y', 3.1, 8);
INSERT INTO 온라인강좌 VALUES (9, '밸리의역사', 14000, TO_DATE('2017/02/14','YYYY/MM/DD'), 1, 'Y', 3.2, 9);
INSERT INTO 온라인강좌 VALUES (10, '무도회예법알기', 25000, TO_DATE('2018/05/31','YYYY/MM/DD'), 6, 'N', 2.3, 10);
INSERT INTO 온라인강좌 VALUES (11, '회화알기', 12000, TO_DATE('2014/02/28','YYYY/MM/DD'), 7, 'Y', 4.3, 11);
INSERT INTO 온라인강좌 VALUES (12, '도자기역사', 10000, TO_DATE('2015/01/13','YYYY/MM/DD'), 1, 'N', 2.1, 12);
INSERT INTO 온라인강좌 VALUES (13, '스포츠댄스기초', 8000, TO_DATE('2015/02/23','YYYY/MM/DD'), 2, 'N', 1.7, 13);
INSERT INTO 온라인강좌 VALUES (14, '탱고기초', 8000, TO_DATE('2014/03/30','YYYY/MM/DD'), 3, 'Y', 4.2, 14);
INSERT INTO 온라인강좌 VALUES (15, '피아노악보읽기', 35000, TO_DATE('2016/04/20','YYYY/MM/DD'), 2, 'Y', 3.7, 15);
INSERT INTO 온라인강좌 VALUES (16, '기타주법101', 30000, TO_DATE('2017/03/30','YYYY/MM/DD'), 2, 'N', 1.8, 16);
INSERT INTO 온라인강좌 VALUES (17, '클라리넷101', 30000, TO_DATE('2017/02/22','YYYY/MM/DD'), 3, 'Y', 3.2, 17);
INSERT INTO 온라인강좌 VALUES (18, '히라가나익히기', 20000, TO_DATE('2014/07/08','YYYY/MM/DD'), 1, 'Y', 3.4, 18);
INSERT INTO 온라인강좌 VALUES (19, '러시아문법과단어', 30000, TO_DATE('2013/11/10','YYYY/MM/DD'), 4, 'N', 1.9, 19);
INSERT INTO 온라인강좌 VALUES (20, '큐브알기', 15000, TO_DATE('2012/12/23','YYYY/MM/DD'), 5, 'Y', 3.3, 20);




























CREATE TABLE 오프라인강좌 (
 오프라인강좌번호    NUMBER(8),
 수강유형	     CHAR(12) DEFAULT '회원/소모임' CHECK(수강유형 IN('회원', '소모임', '회원/소모임')),
 강좌이름            VARCHAR2(30) NOT NULL UNIQUE,
 수강료              NUMBER(7) NOT NULL CHECK(수강료>=0),
 최소인원수          NUMBER(5) NOT NULL CHECK(최소인원수>=0),
 최대인원수	     NUMBER(5) NOT NULL CHECK(최대인원수>=1),
 개강일      	     DATE NOT NULL,
 종강일 	     DATE NOT NULL,
 지역	     	     VARCHAR(10) NOT NULL,
 강사번호     	     NUMBER(8) NOT NULL,
 관리자승인유무      CHAR(1) NOT NULL CHECK(관리자승인유무 IN('Y', 'N')),
 별점		     NUMBER(2,1) CHECK(별점 BETWEEN 1.0 AND 5.0),
 취미코드번호	     CHAR(4) NOT NULL,
 CONSTRAINT  오프라인강좌_PK  PRIMARY KEY (오프라인강좌번호),
 CONSTRAINT  오프라인강사_FK  FOREIGN KEY (강사번호) REFERENCES 강사(강사번호),
 CONSTRAINT  오프라인취미_FK  FOREIGN KEY (취미코드번호) REFERENCES 취미코드(코드번호),
 CONSTRAINT  개강종강비교_CK  CHECK(개강일<종강일)
);

INSERT INTO 오프라인강좌 VALUES (1, '회원','농구_드리블선수되는법', 15000, 10, 20, TO_DATE('2018/03/18','YYYY/MM/DD'), TO_DATE('2018/05/04','YYYY/MM/DD'), '경기도', 1, 'Y', 3.2, 1);
INSERT INTO 오프라인강좌 VALUES (2, '소모임','축구_골을향해', 10000, 5, 15, TO_DATE('2018/01/18','YYYY/MM/DD'), TO_DATE('2018/06/04','YYYY/MM/DD'), '울릉도', 2, 'Y', 3.0, 2);
INSERT INTO 오프라인강좌 VALUES (3, '소모임','식도락_즐거운식사기행', 30000, 10, 30, TO_DATE('2018/02/08','YYYY/MM/DD'), TO_DATE('2018/06/13','YYYY/MM/DD'), '충청북도', 3, 'N', 2.8, 3);
INSERT INTO 오프라인강좌 VALUES (4, '회원','영화_영화알고즐기기', 10000, 4, 10, TO_DATE('2018/03/20','YYYY/MM/DD'), TO_DATE('2018/04/21','YYYY/MM/DD'), '전라도', 4, 'Y', 4.5, 4);
INSERT INTO 오프라인강좌 VALUES (5, '회원','독서_토론과시야', 5000, 3, 6, TO_DATE('2018/05/18','YYYY/MM/DD'), TO_DATE('2018/06/13','YYYY/MM/DD'), '충청남도', 5, 'Y', 3.5, 5);
INSERT INTO 오프라인강좌 VALUES (6, '회원/소모임','대중문화_문화공연즐기기', 25000, 7, 15, TO_DATE('2018/02/08','YYYY/MM/DD'), TO_DATE('2018/05/04','YYYY/MM/DD'), '전라도', 6, 'Y', 4.5, 6);
INSERT INTO 오프라인강좌 VALUES (7, '회원','그래픽디자인_태블릿익히기', 35000, 8, 22, TO_DATE('2018/03/18','YYYY/MM/DD'), TO_DATE('2018/06/17','YYYY/MM/DD'), '경상남도', 7, 'N', 2.3, 7);
INSERT INTO 오프라인강좌 VALUES (8, '회원/소모임','한식_한식의역사느끼기', 50000, 10, 15, TO_DATE('2018/03/02','YYYY/MM/DD'), TO_DATE('2018/05/01','YYYY/MM/DD'), '경상북도', 8, 'N', 1.3, 8);
INSERT INTO 오프라인강좌 VALUES (9, '회원/소모임','밸리댄스_춤의아름다움', 100000, 10, 25, TO_DATE('2018/04/30','YYYY/MM/DD'), TO_DATE('2018/05/30','YYYY/MM/DD'), '강원도', 9, 'N', 1.7, 9);
INSERT INTO 오프라인강좌 VALUES (10, '소모임','무도회_무도회의예법', 150000, 10, 25, TO_DATE('2017/12/18','YYYY/MM/DD'), TO_DATE('2018/12/17','YYYY/MM/DD'), '강원도', 10, 'Y', 3.5, 10);
INSERT INTO 오프라인강좌 VALUES (11, '회원','회화_트렌드따라잡기', 30000, 8, 16, TO_DATE('2018/02/06','YYYY/MM/DD'), TO_DATE('2018/08/04','YYYY/MM/DD'), '함경도', 11, 'Y', 3.7, 11);
INSERT INTO 오프라인강좌 VALUES (12, '회원','도자기_도자기달인따라하기', 40000, 5, 10, TO_DATE('2018/01/15','YYYY/MM/DD'), TO_DATE('2018/07/04','YYYY/MM/DD'), '경상도', 12, 'Y', 3.9, 12);
INSERT INTO 오프라인강좌 VALUES (13, '회원/소모임','스포츠댄스_파트너를따라라', 60000, 4, 14, TO_DATE('2017/11/13','YYYY/MM/DD'), TO_DATE('2018/06/04','YYYY/MM/DD'), '충청남도', 13, 'Y', 4.0, 13);
INSERT INTO 오프라인강좌 VALUES (14, '소모임','탱고_리듬을느끼기', 60000, 10, 16, TO_DATE('2018/04/11','YYYY/MM/DD'), TO_DATE('2018/05/10','YYYY/MM/DD'), '경상남도', 14, 'N', 2.3, 14);
INSERT INTO 오프라인강좌 VALUES (15, '회원','피아노_콩쿠르노리기', 130000, 3, 6, TO_DATE('2018/02/17','YYYY/MM/DD'), TO_DATE('2018/05/16','YYYY/MM/DD'), '경상북도', 15, 'Y', 4.3, 15);
INSERT INTO 오프라인강좌 VALUES (16, '회원','기타_기타기초부터익히기', 120000, 5, 12, TO_DATE('2018/07/18','YYYY/MM/DD'), TO_DATE('2018/10/04','YYYY/MM/DD'), '경기도', 16, 'Y', 3.3, 16);
INSERT INTO 오프라인강좌 VALUES (17, '소모임','클라리넷_미지의클라리넷', 80000, 3, 10, TO_DATE('2018/04/04','YYYY/MM/DD'), TO_DATE('2018/05/03','YYYY/MM/DD'), '강원도', 17, 'Y', 3.4, 17);
INSERT INTO 오프라인강좌 VALUES (18, '회원/소모임','일본어_히라가나가타카나', 30000, 10, 25, TO_DATE('2018/03/22','YYYY/MM/DD'), TO_DATE('2018/06/22','YYYY/MM/DD'), '충청북도', 18, 'Y', 3.2, 18);
INSERT INTO 오프라인강좌 VALUES (19, '회원/소모임','러시아어_하라쇼', 70000, 5, 15, TO_DATE('2017/11/15','YYYY/MM/DD'), TO_DATE('2018/02/23','YYYY/MM/DD'), '경기도', 19, 'Y', 5.0, 19);
INSERT INTO 오프라인강좌 VALUES (20, '소모임','큐브_큐브의법칙', 12000, 5, 10, TO_DATE('2018/03/18','YYYY/MM/DD'), TO_DATE('2018/05/04','YYYY/MM/DD'), '전라도', 20, 'N', 2.2, 20);
INSERT INTO 오프라인강좌 VALUES (21, '회원/소모임','농구_초급', 12000, 5, 10, TO_DATE('2018/03/18','YYYY/MM/DD'), TO_DATE('2018/05/04','YYYY/MM/DD'), '서울시', 21, 'Y', 3.2, 1);
INSERT INTO 오프라인강좌 VALUES (22, '회원/소모임','농구_중급', 16000, 5, 10, TO_DATE('2018/03/19','YYYY/MM/DD'), TO_DATE('2018/05/05','YYYY/MM/DD'), '서울시', 22, 'Y', 4.2, 1);
INSERT INTO 오프라인강좌 VALUES (23, '회원/소모임','농구_고급', 30000, 5, 10, TO_DATE('2018/03/20','YYYY/MM/DD'), TO_DATE('2018/05/06','YYYY/MM/DD'), '서울시', 23, 'Y', 2.2, 1);
INSERT INTO 오프라인강좌 VALUES (24, '회원/소모임','농구_최고급', 54000, 5, 10, TO_DATE('2018/03/21','YYYY/MM/DD'), TO_DATE('2018/05/07','YYYY/MM/DD'), '서울시', 24, 'Y', 3.8, 1);
INSERT INTO 오프라인강좌 VALUES (25, '회원/소모임','농구_최최고급', 88000, 5, 10, TO_DATE('2018/03/22','YYYY/MM/DD'), TO_DATE('2018/05/08','YYYY/MM/DD'), '서울시', 25, 'Y', 4.4, 1);
INSERT INTO 오프라인강좌 VALUES (26, '회원/소모임','농구_드리블', 12000, 5, 10, TO_DATE('2018/03/18','YYYY/MM/DD'), TO_DATE('2018/05/04','YYYY/MM/DD'), '경기도', 21, 'Y', 3.5, 1);
INSERT INTO 오프라인강좌 VALUES (27, '회원/소모임','농구_슛', 16000, 5, 10, TO_DATE('2018/03/19','YYYY/MM/DD'), TO_DATE('2018/05/05','YYYY/MM/DD'), '경기도', 22, 'Y', 4.5, 1);
INSERT INTO 오프라인강좌 VALUES (28, '회원/소모임','농구_스크림', 30000, 5, 10, TO_DATE('2018/03/20','YYYY/MM/DD'), TO_DATE('2018/05/06','YYYY/MM/DD'), '경기도', 23, 'Y', 2.5, 1);







































CREATE TABLE 강의요일 (
 오프라인강좌번호    NUMBER(8),
 강의요일            CHAR(2) NOT NULL, 
 시작시간            CHAR(5) NOT NULL,
 종료시간 	CHAR(5) NOT NULL,
 CONSTRAINT  강의요일_PK  PRIMARY KEY (오프라인강좌번호, 강의요일),
 CONSTRAINT  강의요일_FK  FOREIGN KEY (오프라인강좌번호) REFERENCES 오프라인강좌(오프라인강좌번호)
);
 
INSERT INTO 강의요일 VALUES (1, '목','10:00', '15:30');
INSERT INTO 강의요일 VALUES (2, '토','10:00', '16:00');
INSERT INTO 강의요일 VALUES (3, '월','08:00', '15:30');
INSERT INTO 강의요일 VALUES (4, '화','11:00', '13:30');
INSERT INTO 강의요일 VALUES (5, '화','14:00', '16:00');
INSERT INTO 강의요일 VALUES (6, '일','09:00', '17:00');
INSERT INTO 강의요일 VALUES (7, '월','09:30', '12:30');
INSERT INTO 강의요일 VALUES (8, '수','11:00', '14:30');
INSERT INTO 강의요일 VALUES (9, '수','15:30', '17:00');
INSERT INTO 강의요일 VALUES (10, '목','13:00', '15:30');
INSERT INTO 강의요일 VALUES (11, '금','10:00', '12:30');
INSERT INTO 강의요일 VALUES (12, '목','13:00', '15:00');
INSERT INTO 강의요일 VALUES (13, '일','14:30', '15:30');
INSERT INTO 강의요일 VALUES (14, '일','15:30', '18:00');
INSERT INTO 강의요일 VALUES (15, '화','13:00', '15:00');
INSERT INTO 강의요일 VALUES (16, '월','18:00', '19:30');
INSERT INTO 강의요일 VALUES (17, '화','17:00', '18:00');
INSERT INTO 강의요일 VALUES (18, '수','11:00', '13:00');
INSERT INTO 강의요일 VALUES (19, '수','10:00', '12:30');
INSERT INTO 강의요일 VALUES (20, '수','17:00', '19:00');










CREATE TABLE 온라인강좌후기 (
후기번호 NUMBER(8),
내용 VARCHAR2(1000) NOT NULL,
별점 NUMBER(2,1) NOT NULL CHECK(별점 BETWEEN 1.0 AND 5.0),
학습시간 NUMBER(2),
작성일시 TIMESTAMP NOT NULL,
CONSTRAINT  온후기번호_PK  PRIMARY KEY (후기번호)
);

INSERT INTO 온라인강좌후기 VALUES(1, '내 인생 E-LEARNING인듯', 4.8, 10, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기 VALUES(2, '듣다가 배고파져요', 4, 2, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기  VALUES(3, '좋은 강의 잘 시작하고 있습니다', 5,3, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기 VALUES(4, '최고!최신!최대!최선!', 3.3, 5, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기 VALUES(5, '긍정적인 마인드. 그것이 답이였습니다',2,2 , TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기 VALUES(6, '체험단 모집해야겠습니다.',3,5 , TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기 VALUES(7, '교수님.. 뽀샵 제대론데요? ㅋㅋㅋ',3.2,4, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(8, '와우~ 끝내줍니다. Good!!!',4.1,3 , TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 온라인강좌후기 VALUES(9, '잘가르치니까',2.1,3, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(10, '전체적으로 만족합니다.',3.3,2, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(11, '기초지식이 없어 방대한 자료를 짧은 시간에 소화하기 힘들다',1,1, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(12, '개발용어들을 가끔씩 쓰셨는데 개발자가 아니여서 이해 되지 않는 용어들이 조금 있었습니다',2.9,0, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(13, '하나하나 차근차근 알려주셔서 전혀 모르고 시작했지만 알아갈 수 있어서 좋아습니다.',5,1, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(14, '친절하시고 실습할 수 있는 환경이 매우 만족스럽습니다.',4.2,3, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(15, '현장경험이나 최근 트렌드에 대한 설명들이 기억에 남습니다.',3.5,4, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(16, '전반적으로 좋았습니다. 감사합니다!',3.5,2, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(17, '매우 전문적 지식을 쉽게 알려주려고 노력하였음',2.4,3, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(18, '짧은 시간에 소화를 하기에는 워낙 범의가 광범위 했던 것 같습니다. ',1.6,3, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(19, '실무에 활용할 수 있는 보다 다양한 예제를 보여주셨으면 합니다. ',4,4, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );
INSERT INTO 온라인강좌후기 VALUES(20, '현재 바로 사용하지 않더라도 추후 도움이 될것 같다.',3.5,2, TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS') );



















CREATE TABLE 오프라인강좌후기 (
후기번호 NUMBER(8),
내용 VARCHAR2(1000) NOT NULL,
별점 NUMBER(2,1) NOT NULL CHECK(별점 BETWEEN 1.0 AND 5.0),
수업분위기 VARCHAR2(8) NOT NULL CHECK(수업분위기 IN('활동적임','자유로움','조용함','시끄러움','엄격함','정적임')),
작성일시 TIMESTAMP NOT NULL,
CONSTRAINT  오프후기번호_PK  PRIMARY KEY (후기번호)
);

INSERT INTO 오프라인강좌후기 VALUES(1, '디비가 너무재밌어서 디비지겠다', 1.1, '시끄러움', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(2, '정말 재밌어요!!', 5, '정적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(3, '배워두면 제일 쓰만해요', 5, '활동적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(4, '덕분에 이번실기 잘 봤습니다. ', 3.3, '엄격함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(5, '사랑합니다.', 2, '자유로움', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(6, '칭찬해야지', 3.3, '엄격함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(7, '너무 잘 가르친다.', 3, '엄격함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(8, '힘들다 듣지마라', 1, '엄격함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(9, '최고입니다. ', 3.3, '정적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(10, '선생님 다음편도 해주세요!', 3.3, '조용함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(11, '너무 재미있어요. 재밌기만..', 2.5, '시끄러움', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(12, '쌤편해요', 4, '활동적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(13, '진짜 재밌어요', 5, '조용함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(14, '별로 안듣는게 나을 듯', 1.5, '엄격함', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(15, '좋은데 시간이 너무 길다.', 2.2, '정적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(16, '마지막이라 너무 아쉬워요', 4.5, '시끄러움', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(17, '암기굿', 3.1, '활동적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(18, '--쌤 재밌어요', 4.8, '활동적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(19, '강의 이해 안됨', 1, '활동적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(20, '강의 다 들었어요!', 3.2, '정적임', TO_DATE('2018/05/02-03:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(21, '잘가르침!', 3.2, '활동적임', TO_DATE('2018/05/02-02:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT INTO 오프라인강좌후기 VALUES(22, '들을만함!', 2.8, '정적임', TO_DATE('2018/05/02-08:03:11','YYYY/MM/DD-HH24:MI:SS'));
INSERT     INTO 오프라인강좌후기 VALUES(23, '기본기는 충실하게 배울수 있는듯?', 3.7, '시끄러움', TO_DATE('2018/05/08-03:03:11','YYYY/MM/DD-HH24:MI:SS'));






















CREATE TABLE 멘토링하다(
 멘토ID		VARCHAR2(20),
 멘티ID		VARCHAR2(20),
 멘토링시작일시	DATE,
 평가별점		NUMBER(2,1)  CHECK(평가별점 BETWEEN 1.0 AND 5.0), 
 CONSTRAINT 멘토링하다_PK PRIMARY KEY (멘토ID, 멘티ID),
 CONSTRAINT 멘토ID_멘토링_FK FOREIGN KEY (멘토ID) REFERENCES 회원(ID),
 CONSTRAINT 멘티ID_멘토링_FK FOREIGN KEY (멘티ID) REFERENCES 회원(ID)
);

INSERT INTO 멘토링하다 VALUES ('rnans33', 'dkdlel3', TO_DATE('2018/05/04','YYYY/MM/DD'), 2.8);
INSERT INTO 멘토링하다 VALUES ('dkdlel1', 'dkdlel4', TO_DATE('2018/05/08','YYYY/MM/DD'), 2.1);
INSERT INTO 멘토링하다 VALUES ('dkdlel13', 'dkdlel9' , TO_DATE('2018/05/13','YYYY/MM/DD'), 3.8);
INSERT INTO 멘토링하다 VALUES ('dkdlel6', 'dkdlel10', TO_DATE('2018/04/22','YYYY/MM/DD'), 4.2);
INSERT INTO 멘토링하다 VALUES ('dkdlel8', 'dkdlel2', TO_DATE('2018/05/16','YYYY/MM/DD'), 5);
INSERT INTO 멘토링하다 VALUES ('dkdlel6', 'dkdlel4', TO_DATE('2018/03/22','YYYY/MM/DD'), 2.5);
INSERT INTO 멘토링하다 VALUES ('dkdlel8', 'dkdlel4', TO_DATE('2018/01/04','YYYY/MM/DD'), 3.1);
INSERT INTO 멘토링하다 VALUES ('rnans33', 'dkdlel10', TO_DATE('2017/08/11','YYYY/MM/DD'), 4.2);
INSERT INTO 멘토링하다 VALUES ('dkdlel6', 'dkdlel7', TO_DATE('2018/01/02','YYYY/MM/DD'), 5);
INSERT INTO 멘토링하다 VALUES ('rnans33', 'dkdlel5', TO_DATE('2018/02/03','YYYY/MM/DD'), 1.7);











CREATE TABLE 소속하다(
     소모임번호 NUMBER(8),
     회원id     VARCHAR2(20),
     소모임직책 VARCHAR2(8) DEFAULT '일반회원' NOT NULL CHECK(소모임직책 IN('소모임장','매니저','일반회원')),
     가입일자   DATE NOT NULL,

     CONSTRAINT 소속하다_PK PRIMARY KEY(소모임번호,회원id),
     CONSTRAINT 소속하다_소모임번호_FK FOREIGN KEY(소모임번호) REFERENCES 소모임(소모임번호),
     CONSTRAINT 소속하다_회원id_FK FOREIGN KEY(회원id) REFERENCES 회원(id)
);

INSERT INTO 소속하다 VALUES(1,'dkdlel1', '소모임장', TO_DATE('2017/05/03','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(2,'dkdlel2', '소모임장', TO_DATE('2017/05/03','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(3,'dkdlel3', '소모임장', TO_DATE('2013/03/14','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(4,'dkdlel4', '소모임장', TO_DATE('2014/01/09','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(5,'dkdlel5', '소모임장', TO_DATE('2011/02/23','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(1,'dkdlel6', '매니저', TO_DATE('2012/07/14','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(2,'dkdlel7', '매니저', TO_DATE('2015/05/27','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(3,'dkdlel8', '매니저', TO_DATE('2018/07/05','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(4,'dkdlel9', '매니저', TO_DATE('2018/03/11','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(5,'dkdlel10', '매니저', TO_DATE('2018/04/20','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(1,'dkdlel11', '일반회원', TO_DATE('2018/08/15','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(1,'dkdlel12', '일반회원', TO_DATE('2013/03/15','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(1,'dkdlel13', '일반회원', TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(2,'dkdlel14', '일반회원', TO_DATE('2014/05/25','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(2,'dkdlel15', '일반회원', TO_DATE('2018/02/12','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(2,'dkdlel16', '일반회원', TO_DATE('2017/12/05','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(3,'dkdlel17', '일반회원', TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(4,'dkdlel18', '일반회원', TO_DATE('2016/01/20','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(4,'rnans33', '일반회원', TO_DATE('2013/02/02','YYYY/MM/DD'));
INSERT INTO 소속하다 VALUES(5,'rla1234', '일반회원', TO_DATE('2014/01/09','YYYY/MM/DD'));





























CREATE TABLE 대여하다(
     소모임번호 NUMBER(8),
     대여장소번호 NUMBER(4),
     시작대여일시 TIMESTAMP NOT NULL,
     예약일시     TIMESTAMP,
     대여단위     CHAR(1) NOT NULL CHECK(대여단위 IN('Y','M','T')),
     대여시간     NUMBER(3) NOT NULL,
     CONSTRAINT 대여하다_PK PRIMARY KEY (소모임번호,대여장소번호,시작대여일시),
     CONSTRAINT 대여하다_소모임번호_FK FOREIGN KEY(소모임번호) REFERENCES 소모임(소모임번호),
     CONSTRAINT 대여하다_대여장소번호_FK FOREIGN KEY(대여장소번호) REFERENCES 대여장소(대여장소번호)
);

INSERT INTO 대여하다 VALUES(1,1, TO_DATE('2018/06/01-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/05/02-03:05','YYYY/MM/DD-HH24:MI:SS'), 'T', 2);
INSERT INTO 대여하다 VALUES(1,2, TO_DATE('2018/05/29-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/04/03-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'M', 3);
INSERT INTO 대여하다 VALUES(1,3, TO_DATE('2018/06/01-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/03/24-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 2);
INSERT INTO 대여하다 VALUES(1,4, TO_DATE('2018/06/01-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/03/03-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'Y', 1);
INSERT INTO 대여하다 VALUES(2,5, TO_DATE('2018/06/02-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/05/26-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'Y', 1);
INSERT INTO 대여하다 VALUES(2,6, TO_DATE('2018/06/03-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/04/13-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 2);
INSERT INTO 대여하다 VALUES(2,7, TO_DATE('2018/06/04-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/01/24-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 5);
INSERT INTO 대여하다 VALUES(2,8, TO_DATE('2018/06/05-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/02/23-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'M', 3);
INSERT INTO 대여하다 VALUES(2,9, TO_DATE('2018/06/06-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/02/12-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'M', 4);
INSERT INTO 대여하다 VALUES(3,10, TO_DATE('2018/06/01-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/01/06-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 2);
INSERT INTO 대여하다 VALUES(4,11, TO_DATE('2018/06/03-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/05/05-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 1);
INSERT INTO 대여하다 VALUES(4,12, TO_DATE('2018/06/01-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/05/04-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 3);
INSERT INTO 대여하다 VALUES(4,13, TO_DATE('2018/06/02-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/03/28-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'M', 5);
INSERT INTO 대여하다 VALUES(4,14, TO_DATE('2018/06/03-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/03/13-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 6);
INSERT INTO 대여하다 VALUES(5,15, TO_DATE('2018/06/04-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/04/24-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 9);
INSERT INTO 대여하다 VALUES(5,16, TO_DATE('2018/06/05-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/03/05-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'Y', 1);
INSERT INTO 대여하다 VALUES(5,17, TO_DATE('2018/06/06-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/01/17-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 9);
INSERT INTO 대여하다 VALUES(5,18, TO_DATE('2018/06/08-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/03/22-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 7);
INSERT INTO 대여하다 VALUES(5,19, TO_DATE('2018/06/07-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/01/15-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 7);
INSERT INTO 대여하다 VALUES(5,20, TO_DATE('2018/06/09-03:05:00','YYYY/MM/DD-HH24:MI:SS'), TO_DATE('2018/04/23-03:05:00','YYYY/MM/DD-HH24:MI:SS'), 'T', 8);








CREATE TABLE 회원강좌신청하다(
     오프라인강좌번호    NUMBER(8),
     ID          	 VARCHAR2(20),
     신청일자		 DATE    NOT NULL,

     CONSTRAINT 회원강좌신청하다_PK PRIMARY KEY (오프라인강좌번호, ID),
     CONSTRAINT 회원오프라인번호_FK FOREIGN KEY (오프라인강좌번호) REFERENCES 오프라인강좌(오프라인강좌번호),
     CONSTRAINT 회원번호참조_FK FOREIGN KEY (ID) REFERENCES 회원(ID)
);

INSERT INTO 회원강좌신청하다 VALUES (1, 'dkdlel1', TO_DATE('2018/05/12','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (2, 'dkdlel2', TO_DATE('2018/03/13','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (3, 'dkdlel3', TO_DATE('2018/01/14','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (4, 'dkdlel4', TO_DATE('2018/03/25','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (5, 'dkdlel5', TO_DATE('2018/02/26','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (6, 'dkdlel6', TO_DATE('2018/04/30','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (7, 'dkdlel7', TO_DATE('2018/05/21','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (8, 'dkdlel8', TO_DATE('2018/05/31','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (9, 'dkdlel9', TO_DATE('2018/06/11','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (10, 'dkdlel10', TO_DATE('2018/07/20','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (11, 'dkdlel11', TO_DATE('2017/12/07','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (12, 'dkdlel12', TO_DATE('2017/11/08','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (13, 'dkdlel13', TO_DATE('2018/09/12','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (14, 'dkdlel14', TO_DATE('2017/10/14','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (15, 'dkdlel15', TO_DATE('2018/05/12','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (16, 'dkdlel16', TO_DATE('2018/05/11','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (17, 'dkdlel17', TO_DATE('2018/02/23','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (18, 'dkdlel18', TO_DATE('2018/01/14','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (19, 'rnans33', TO_DATE('2018/04/19','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (20, 'rla1234', TO_DATE('2018/03/29','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (21, 'dkdlel1', TO_DATE('2018/01/14','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (22, 'dkdlel2', TO_DATE('2018/04/19','YYYY/MM/DD'));
INSERT INTO 회원강좌신청하다 VALUES (23, 'dkdlel3', TO_DATE('2018/03/29','YYYY/MM/DD'));




























CREATE TABLE 소모임강좌신청하다(
     오프라인강좌번호    NUMBER(8),
     소모임번호          NUMBER(8),
     신청일자		 DATE    NOT NULL,

     CONSTRAINT 소모임강좌신청하다_PK PRIMARY KEY (오프라인강좌번호, 소모임번호),
     CONSTRAINT 소모임오프라인번호_FK FOREIGN KEY (오프라인강좌번호) REFERENCES 오프라인강좌(오프라인강좌번호),
     CONSTRAINT 소모임번호참조_FK FOREIGN KEY (소모임번호) REFERENCES 소모임(소모임번호)
);

INSERT INTO 소모임강좌신청하다 VALUES (1, 1, TO_DATE('2018/02/23','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (2, 3, TO_DATE('2018/05/23','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (3, 4, TO_DATE('2018/03/30','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (4, 5, TO_DATE('2018/01/11','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (5, 2, TO_DATE('2018/04/13','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (6, 2, TO_DATE('2018/07/05','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (7, 3, TO_DATE('2018/02/17','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (8, 4, TO_DATE('2018/03/13','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (9, 5, TO_DATE('2017/12/23','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (10, 2, TO_DATE('2017/09/24','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (11, 1, TO_DATE('2015/05/03','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (12, 1, TO_DATE('2018/03/14','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (13, 3, TO_DATE('2018/05/23','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (14, 4, TO_DATE('2018/05/23','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (15, 5, TO_DATE('2018/06/08','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (16, 3, TO_DATE('2018/01/28','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (17, 2, TO_DATE('2018/01/23','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (18, 1, TO_DATE('2018/02/13','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (19, 4, TO_DATE('2018/06/14','YYYY/MM/DD'));
INSERT INTO 소모임강좌신청하다 VALUES (20, 3, TO_DATE('2017/07/23','YYYY/MM/DD'));






























CREATE TABLE 수강하다(
 ID  		VARCHAR2(20),
 온라인강좌번호   	NUMBER(8), 
 수강일자		DATE,
 CONSTRAINT 수강하다_PK PRIMARY KEY (ID, 온라인강좌번호),
 CONSTRAINT 수강ID_FK FOREIGN KEY (ID) REFERENCES 회원(ID),
 CONSTRAINT 온라인강좌번호_FK FOREIGN KEY(온라인강좌번호) REFERENCES 온라인강좌(온라인강좌번호)
);
INSERT INTO 수강하다 VALUES ('dkdlel1', 1, TO_DATE('2017/05/03','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel2',2, TO_DATE('2013/02/11','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel3',3, TO_DATE('2013/03/14','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel4',4, TO_DATE('2015/04/10','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel5',5, TO_DATE('2014/01/09','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel6',6, TO_DATE('2015/05/27','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel7',7, TO_DATE('2016/11/11','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel8',8, TO_DATE('2011/02/23','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel9',9, TO_DATE('2012/07/14','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel10',10, TO_DATE('2013/05/21','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel11',11, TO_DATE('2014/05/22','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel12',12, TO_DATE('2015/04/09','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel13',13, TO_DATE('2018/03/15','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel14',14, TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel15',15, TO_DATE('2014/01/10','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel16',16, TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel17',17, TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('dkdlel18',18, TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('rnans33',19, TO_DATE('2018/01/02','YYYY/MM/DD'));
INSERT INTO 수강하다 VALUES ('rla1234',20, TO_DATE('2018/01/02','YYYY/MM/DD'));


CREATE TABLE 온라인후기작성하다 (
후기번호 NUMBER(8),
온라인강좌번호 NUMBER(8),
회원ID VARCHAR2(20),
CONSTRAINT 온후기_PK PRIMARY KEY (후기번호, 온라인강좌번호, 회원ID),
CONSTRAINT 온후기_후기_FK FOREIGN KEY (후기번호) REFERENCES 온라인강좌후기(후기번호),
CONSTRAINT 온후기_강좌번호_FK FOREIGN KEY (온라인강좌번호) REFERENCES 온라인강좌(온라인강좌번호),
CONSTRAINT 온후기_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID)
);

INSERT INTO 온라인후기작성하다 VALUES(1, 1, 'dkdlel1');
INSERT INTO 온라인후기작성하다 VALUES(2, 2, 'dkdlel2');
INSERT INTO 온라인후기작성하다 VALUES(3, 3, 'dkdlel3');
INSERT INTO 온라인후기작성하다 VALUES(4, 4, 'dkdlel4');
INSERT INTO 온라인후기작성하다 VALUES(5, 5, 'dkdlel5');
INSERT INTO 온라인후기작성하다 VALUES(6, 6, 'dkdlel6');
INSERT INTO 온라인후기작성하다 VALUES(7, 7, 'dkdlel7');
INSERT INTO 온라인후기작성하다 VALUES(8, 8, 'dkdlel8');
INSERT INTO 온라인후기작성하다 VALUES(9, 9, 'dkdlel9');
INSERT INTO 온라인후기작성하다 VALUES(10, 10, 'dkdlel10');
INSERT INTO 온라인후기작성하다 VALUES(11, 11, 'dkdlel11');
INSERT INTO 온라인후기작성하다 VALUES(12, 12, 'dkdlel12');
INSERT INTO 온라인후기작성하다 VALUES(13, 13, 'dkdlel13');
INSERT INTO 온라인후기작성하다 VALUES(14, 14, 'dkdlel14');
INSERT INTO 온라인후기작성하다 VALUES(15, 15, 'dkdlel15');
INSERT INTO 온라인후기작성하다 VALUES(16, 16, 'dkdlel16');
INSERT INTO 온라인후기작성하다 VALUES(17, 17, 'dkdlel17');
INSERT INTO 온라인후기작성하다 VALUES(18, 18, 'dkdlel18');
INSERT INTO 온라인후기작성하다 VALUES(19, 19, 'rnans33');
INSERT INTO 온라인후기작성하다 VALUES(20, 20, 'rla1234');









CREATE TABLE 오프라인후기작성하다 (
후기번호 NUMBER(8),
오프라인강좌번호 NUMBER(8),
회원ID VARCHAR2(20),
CONSTRAINT 오프후기_PK PRIMARY KEY (후기번호, 오프라인강좌번호, 회원ID),
CONSTRAINT 오프후기_후기_FK FOREIGN KEY (후기번호) REFERENCES 오프라인강좌후기(후기번호),
CONSTRAINT 오프후기_강좌번호_FK FOREIGN KEY (오프라인강좌번호) REFERENCES 오프라인강좌(오프라인강좌번호),
CONSTRAINT 오프후기_회원ID_FK FOREIGN KEY (회원ID) REFERENCES 회원(ID)
);

INSERT INTO 오프라인후기작성하다 VALUES(1, 1, 'dkdlel1');
INSERT INTO 오프라인후기작성하다 VALUES(2, 2, 'dkdlel2');
INSERT INTO 오프라인후기작성하다 VALUES(3, 3, 'dkdlel3');
INSERT INTO 오프라인후기작성하다 VALUES(4, 4, 'dkdlel4');
INSERT INTO 오프라인후기작성하다 VALUES(5, 5, 'dkdlel5');
INSERT INTO 오프라인후기작성하다 VALUES(6, 6, 'dkdlel6');
INSERT INTO 오프라인후기작성하다 VALUES(7, 7, 'dkdlel7');
INSERT INTO 오프라인후기작성하다 VALUES(8, 8, 'dkdlel8');
INSERT INTO 오프라인후기작성하다 VALUES(9, 9, 'dkdlel9');
INSERT INTO 오프라인후기작성하다 VALUES(10, 10, 'dkdlel10');
INSERT INTO 오프라인후기작성하다 VALUES(11, 11, 'dkdlel11');
INSERT INTO 오프라인후기작성하다 VALUES(12, 12, 'dkdlel12');
INSERT INTO 오프라인후기작성하다 VALUES(13, 13, 'dkdlel13');
INSERT INTO 오프라인후기작성하다 VALUES(14, 14, 'dkdlel14');
INSERT INTO 오프라인후기작성하다 VALUES(15, 15, 'dkdlel15');
INSERT INTO 오프라인후기작성하다 VALUES(16, 16, 'dkdlel16');
INSERT INTO 오프라인후기작성하다 VALUES(17, 17, 'dkdlel17');
INSERT INTO 오프라인후기작성하다 VALUES(18, 18, 'dkdlel18');
INSERT INTO 오프라인후기작성하다 VALUES(19, 19, 'rnans33');
INSERT INTO 오프라인후기작성하다 VALUES(20, 20, 'rla1234');
INSERT INTO 오프라인후기작성하다 VALUES(21, 21, 'dkdlel1');
INSERT INTO 오프라인후기작성하다 VALUES(22, 22, 'dkdlel2');
INSERT INTO 오프라인후기작성하다 VALUES(23, 23, 'dkdlel3');