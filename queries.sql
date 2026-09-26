
SELECT * from member;




 SELECT name, type
FROM membership_plans

WHERE type = 'Premium';




 SELECT name, specialty, years_of_experience
FROM trainers
ORDER BY years_of_experience DESC;




 SELECT name, duration, max_capacity
FROM class
LIMIT 2
OFFSET 1;





SELECT DISTINCT name
FROM locker;