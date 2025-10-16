1. 자주 나오는 함수

DATE_FORMAT(m.DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH

IFNULL

ROUND( , 자릿수)

MONTH(m.DATE_OF_BIRTH) = 3   


2. 집계함수

가능: SELECT, HAVING, ORDER BY

불가능: WHERE, ON (집계 함수 기준으로는)


3. 고급 문제

GROUP BY를 쓰고 싶다면, 일반적으로 집계 함수(COUNT, SUM, MAX 등)와 함께 사용

SELECT 절에 집계함수 혼합해서 쓰면 GROUP BY 반드시!!

이유: 집계 함수가 아닌 SELECT 컬럼은 모두 GROUP BY에 들어가야 하기 때문
REST_ID만 넣어도 논리적으로 맞지만, 플랫폼에서는 오류 처리될 수 있어서 전부 넣는 게 정답.

JOIN (

 -- 괄호 열고
 
    SELECT FLAVOR, SUM(TOTAL_ORDER) AS JULY_TOTAL
    
    FROM JULY
    
    GROUP BY FLAVOR
    
) j  -- <- 서브쿼리 별칭 필요

GROUP BY 쓰면 HAVING !! WHERE이 아니라


4. GROUP BY에는 집계 함수에 쓰인 컬럼 불가능
5. ORDER BY에서 집계 함수 사용 시 반드시 GROUP BY 써야 함
