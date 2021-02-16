SELECT 강좌이름, 수강료, 지역, 수강유형, 별점
FROM 오프라인강좌 O, 취미코드 H
WHERE O.취미코드번호 = H.코드번호
AND   H.취미명 = '&취미명'
AND   지역 = '&지역'
AND   별점 >= &별점
AND    수강료 <= &수강료
ORDER BY 수강료;