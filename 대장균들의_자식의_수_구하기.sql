-- 부모 자식이면 p c로 자체 조인
SELECT p.ID, COUNT(c.id) AS CHILD_COUNT
FROM ECOLI_DATA p
-- LEFT 이유: 자식이 없는 경우도 CHILD_COUNT = 0으로 출력해야 하기 때문입니다.
LEFT JOIN ECOLI_DATA c
ON p.id = c.PARENT_ID
GROUP BY p.ID
ORDER BY p.ID
