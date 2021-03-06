TTITLE '멘토 멘티 정보'

WITH 멘토_멘티 AS (SELECT T.ID 멘토ID, T.이름 멘토이름, S.ID 멘티ID, S.이름 멘티이름, I.취미경력 멘토경력, I.별점 멘토별점
FROM 회원 T, 회원 S, 멘토링하다 A, 멘토정보 I
WHERE S.ID = A.멘티ID AND T.ID = A.멘토ID AND T.ID=I.멘토ID)

SELECT 멘토ID, 멘토이름, 멘티ID, 멘티이름, 멘토경력, 멘토별점
FROM 멘토_멘티
WHERE 멘토별점>=&멘토별점
ORDER BY 멘토별점 DESC
/
TTITLE OFF