SELECT O.강좌이름,O.최대인원수, COUNT(S.ID) "현재인원수"
FROM 오프라인강좌 O, 회원강좌신청하다 S
WHERE O.오프라인강좌번호=S.오프라인강좌번호
GROUP BY O.강좌이름, O.오프라인강좌번호, O.최대인원수
ORDER BY O.오프라인강좌번호;