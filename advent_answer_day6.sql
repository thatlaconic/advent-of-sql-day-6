SELECT *
FROM children;

SELECT *
FROM gifts;


SELECT children.name AS child_name, 
		gifts.name AS gift_name,
		gifts.price AS price
FROM children 
JOIN gifts ON children.child_id = gifts.child_id
WHERE price > (SELECT AVG(price) FROM gifts)
ORDER BY price ASC
LIMIT 1;