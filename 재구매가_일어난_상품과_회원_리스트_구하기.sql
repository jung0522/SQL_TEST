
SELECT 
  o.USER_ID,
  o.PRODUCT_ID
 from ONLINE_SALE o
 GROUP BY o.USER_ID, o.PRODUCT_ID 
 HAVING count(*) >= 2
 -- WHERE 절에서는 COUNT(*) 같은 집계함수를 바로 쓸 수 없음
 ORDER BY o.USER_ID, o.PRODUCT_ID desc;
