-- 코드를 입력하세요
SELECT 
i.REST_ID,
i.REST_NAME,
i.FOOD_TYPE,
i.FAVORITES,
i.ADDRESS,
ROUND(AVG(r.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO i
JOIN REST_REVIEW r
ON i.REST_ID = r.REST_ID
WHERE i.ADDRESS LIKE '서울%'
GROUP BY
  i.REST_ID, i.REST_NAME, i.FOOD_TYPE, i.FAVORITES, i.ADDRESS
  
-- SELECT 절에 집계함수 혼합해서 쓰면 GROUP BY 반드시!!
-- 이유: 집계 함수가 아닌 SELECT 컬럼은 모두 GROUP BY에 들어가야 하기 때문
-- REST_ID만 넣어도 논리적으로 맞지만, 플랫폼에서는 오류 처리될 수 있어서 전부 넣는 게 정답.
ORDER BY 
AVG(r.REVIEW_SCORE) DESC,
i.FAVORITES DESC;
