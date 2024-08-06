SQL "PROJECTS"

Create a Table : In this project, you will create your own friends table and add/delete data from it!

----------------------------------------
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Orono Munroe', 1940-30-05);

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Josh', 1990-13-05);

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Ben', 1998-06-02);

UPDATE friends
SET name = 'Storm'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'joshg@cambriausa.com'
WHERE id = 2;

UPDATE friends
SET email = 'benw@cambriausa.com'
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends
----------------------------------------




New York Resturaunts : We have put together a table of restaurants called nomnom and we need your help to answer some questions. Use the SQL commands you just learned and find the best dinner spots in the city.

----------------------------------------
SELECT DISTINCT neighborhood
FROM nomnom;
----------------------------------------
SELECT DISTINCT cuisine
FROM nomnom;
----------------------------------------
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';
----------------------------------------
SELECT *
FROM nomnom
WHERE review >= 4;
----------------------------------------
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price = '$$$';
----------------------------------------
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';
----------------------------------------
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown'; 
----------------------------------------
SELECT *
FROM nomnom
WHERE health IS NULL;
----------------------------------------
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;
----------------------------------------
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;
----------------------------------------




Analyzing Hacker News Trends : In this project, you will be working with a table named hacker_news that contains stories from Hacker News since its launch in 2007. 

----------------------------------------
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;
----------------------------------------
SELECT SUM(score)
FROM hacker_news;
----------------------------------------
SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY 2 DESC;
----------------------------------------
SELECT (517 + 309 + 304 + 282) / 6366.0;
----------------------------------------
SELECT user,
   COUNT(*)
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY user
ORDER BY COUNT(*) DESC;
----------------------------------------
SELECT CASE
WHEN url LIKE '%github.com%' THEN 'GitHub'
WHEN url LIKE '%medium.com%' THEN 'Medium'
WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
ELSE 'Other'
END AS 'Source', COUNT(*)
FROM hacker_news
GROUP BY(Source);
----------------------------------------
SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;
----------------------------------------
SELECT strftime('%H', timestamp) AS 'hour', ROUND(AVG(score), 2) AS 'Average Score', COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1 
ORDER BY 2 DESC;
----------------------------------------




Lyft Trip Data : Suppose you are a Data Analyst at Lyft, a ride-sharing platform. For a project, you were given three tables:
trips: trips information
riders: user data
cars: autonomous cars

----------------------------------------
SELECT *
FROM trips;

SELECT * 
FROM riders;

SELECT * 
FROM cars;
----------------------------------------
SELECT *
FROM riders
CROSS JOIN cars;

SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;
----------------------------------------
SELECT *
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;

SELECT *
FROM trips
INNER JOIN cars
ON trips.car_id = cars.id;
----------------------------------------
SELECT *
FROM riders
UNION
SELECT *
FROM riders2
----------------------------------------
SELECT AVG(cost)
FROM trips
----------------------------------------
WITH riders_all AS (SELECT *
FROM riders
UNION
SELECT *
FROM riders2)
SELECT *
FROM riders_all
WHERE total_trips < 500
----------------------------------------
SELECT *
FROM cars
WHERE status = 'active';
----------------------------------------
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
----------------------------------------
