-- 부모 자식 관계에 테이블 2개면 join 2번
SELECT 
c.ITEM_ID, 
c.ITEM_NAME,
c.RARITY
FROM ITEM_TREE t
JOIN ITEM_INFO p 
-- 트리의 부모 아이디 = 부모의 아이디
ON t.PARENT_ITEM_ID = p.ITEM_ID
JOIN ITEM_INFO c
-- 트리의 아이디 = 자식의 아이디
ON t.ITEM_ID = c.ITEM_ID
WHERE p.RARITY = 'RARE'
ORDER BY c.ITEM_ID DESC;
