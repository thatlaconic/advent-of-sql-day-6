# [Making presents fairer 🎁](https://adventofsql.com/challenges/6)

## Description
Santa's elves have reported an issue with gift distribution fairness. Some children are receiving gifts far more expensive than others in their neighborhood. Santa wants to ensure a more equitable distribution by identifying these cases. He needs to find all children who received gifts that are more expensive than the average gift price in the North Pole's gift database, so he can review and adjust the distribution plan accordingly.

## Challenge
[Download Challenge data](https://github.com/thatlaconic/advent-of-sql-day-6/blob/main/advent_of_sql_day_6.sql)

Write a query that returns the name of each child and the name and price of their gift, but only for children who received gifts more expensive than the average gift price.
The results should be ordered by the gift price in ascending order.

Give the name of the child with the first gift thats higher than the average.
  
## Dataset
This dataset contains 2 tables. 
### Using PostgreSQL
**input**
```sql
SELECT *
FROM children ;
```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-6/blob/main/children%20d6.PNG)

**input**
```sql
SELECT *
FROM gifts ;
```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-6/blob/main/gifts.PNG)

### Solution
[Download Solution Code](https://github.com/thatlaconic/advent-of-sql-day-6/blob/main/advent_answer_day6.sql)

**input**
```sql
SELECT children.name AS child_name, 
        gifts.name AS gift_name,
        gifts.price AS price
FROM children 
JOIN gifts ON children.child_id = gifts.child_id
WHERE price > (SELECT AVG(price) FROM gifts)
ORDER BY price ASC
LIMIT 1
;

```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-6/blob/main/answer_day6.PNG)




