USE project_movie_database;
SHOW TABLES;
DESC movies;
DESC directors;
SELECT * FROM movies;
SELECT * FROM directors;
SELECT COUNT(*) FROM movies;
SELECT * 
FROM directors
WHERE name IN ('James Cameron','Luc Besson','John Woo');
SELECT * 
FROM directors
WHERE name LIKE 'S%';
SELECT COUNT(*) 
FROM directors
WHERE gender = 1;
SELECT name 
FROM directors
WHERE gender = 1
LIMIT 9,1;
SELECT title, popularity 
FROM movies
ORDER BY popularity DESC
LIMIT 3;
SELECT title, revenue 
FROM movies
ORDER BY revenue DESC
LIMIT 3;
SELECT title, vote_average 
FROM movies
WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;
SELECT m.title
FROM movies m
JOIN directors d
ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';
SELECT d.name, COUNT(*) 
FROM movies m
JOIN directors d
ON m.director_id = d.id
GROUP BY d.name
ORDER BY COUNT(*) DESC
LIMIT 1;