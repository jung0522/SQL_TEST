1. 자주 나오는 함수

DATE_FORMAT(m.DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH

IFNULL

ROUND( , 자릿수)

MONTH(m.DATE_OF_BIRTH) = 3   


2. 집계함수

가능: SELECT, HAVING, ORDER BY

불가능: WHERE, ON (집계 함수 기준으로는)

3. 고급 문제

SELECT 절에 집계함수 혼합해서 쓰면 GROUP BY 반드시!!

JOIN (

 -- 괄호 열고
 
    SELECT FLAVOR, SUM(TOTAL_ORDER) AS JULY_TOTAL
    
    FROM JULY
    
    GROUP BY FLAVOR
    
) j  -- <- 서브쿼리 별칭 필요

GROUP BY 쓰면 HAVING !! WHERE이 아니라
