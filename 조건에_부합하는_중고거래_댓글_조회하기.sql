-- 코드를 입력하세요
SELECT 
  b.TITLE,
  b.BOARD_ID,
  r.REPLY_ID,
  r.WRITER_ID,
  r.CONTENTS,
  DATE_FORMAT(r.CREATED_DATE, '%Y-%m-%d')
  -- 왼쪽을 오른쪽으로 as
from 
  USED_GOODS_BOARD b
INNER JOIN
  USED_GOODS_REPLY r
ON 
  b.board_id = r.board_id
  -- on id = id (조건 말고)
WHERE
  b.created_date >= '2022-10-01'
  AND b.created_date < '2022-11-01'
ORDER BY
  r.created_date,
  b.title;
