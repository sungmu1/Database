SELECT S.소모임이름, S.지역, D.상세주소, D.시작대여일시, D.예약일시, D.대여용도
FROM 소모임 S JOIN (SELECT * FROM 대여하다 JOIN 대여장소 ON 대여하다.대여장소번호 = 대여장소.대여장소번호) D
ON S.소모임번호 = D.소모임번호
WHERE S.소모임이름 = '&NAME'
 