SELECT S.ID,A.내용,A.별점, B.내용,B.별점
FROM 회원 S, 온라인후기작성하다 O, 오프라인후기작성하다 F, 오프라인강좌후기 A,온라인강좌후기 B
WHERE O.회원ID= '&ID'
AND F.회원ID=ID
AND F.회원ID=O.회원ID
AND A.후기번호 = F.후기번호
AND B.후기번호 = O.후기번호