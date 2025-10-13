-- DISTINCT 없이는 한 개발자가 여러 스킬 때문에 중복으로 나오므로 채점에서 실패
SELECT DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
FROM DEVELOPERS d
JOIN SKILLCODES s
-- 이진수 & 연산 != 0
ON (d.SKILL_CODE & s.CODE) != 0
WHERE s.NAME IN ('Python' , 'C#')
ORDER BY d.ID
