-- 코드를 작성해주세요
SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA 
WHERE (GENOTYPE & 2) = 0
AND ( (GENOTYPE & 1) > 0  OR (GENOTYPE & 4) > 0);

-- | 형질 번호 | 비트 값 | 2진수 위치 | 의미                 |
-- | ----- | ---- | ------ | ------------------ |
-- | 1번 형질 | 1    | 2⁰     | `GENOTYPE & 1 > 0` |
-- | 2번 형질 | 2    | 2¹     | `GENOTYPE & 2 > 0` |
-- | 3번 형질 | 4    | 2²     | `GENOTYPE & 4 > 0` |
-- | 4번 형질 | 8    | 2³     | `GENOTYPE & 8 > 0` |
