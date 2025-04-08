select * from project_movie_database.directors;
SELECT * FROM project_movie_database.movies;
SELECT directors.uid 
FROM project_movie_database.directors 
WHERE directors.uid = 19995
AND directors.uid IN (SELECT movies.uid FROM project_movie_database.movies);
SELECT movies.uid FROM project_movie_database.movies WHERE movies.uid = 19995;

SELECT movies.uid FROM	project_movie_database.movies WHERE movies.uid;

select version();
SELECT COUNT(*) FROM project_movie_database.movies;
SELECT movies.director_id FROM	project_movie_database.movies WHERE movies.director_id;
SELECT movies.tagline FROM	project_movie_database.movies WHERE movies.tagline;

SELECT * FROM project_movie_database.movies WHERE movies.tagline IS NULL;
SELECT * FROM project_movie_database.movies WHERE movies.tagline = 'Remember Philly!';
SELECT * FROM project_movie_database.movies WHERE movies.tagline IS NOT NULL;
SELECT * FROM project_movie_database.movies WHERE movies.tagline;
SELECT DISTINCT tagline FROM project_movie_database.movies;
				SELECT DISTINCT overview FROM project_movie_database.movies;
UPDATE project_movie_database
SET movies.tagline  = 'NA'
WHERE movies.tagline IS NULL;
SELECT DISTINCT tagline FROM project_movie_database.movies WHERE movies.tagline IS NULL;

	SELECT * FROM project_movie_database.movies WHERE movies.original_title LIMIT 10;
    SELECT DISTINCT original_title FROM project_movie_database.movies WHERE movies.original_title;


	UPDATE project_movie_database.movies
SET movies.tagline = 'NA'
WHERE movies.tagline IS NULL
LIMIT 1;
SELECT * FROM project_movie_database WHERE movies.original_title IS NULL OR original_title = '';

SELECT COUNT(*) AS original_title FROM project_movie_database.movies;

SELECT *
FROM project_movie_database.directors
WHERE directors.name IN ('James Cameron', 'Luc Besson', 'John Woo');

SELECT *
FROM project_movie_database.directors
WHERE name LIKE 'S%';

SELECT COUNT(*) AS gender
FROM project_movie_database.directors
WHERE gender = '1';

					SELECT name
					FROM project_movie_database.directors
					WHERE gender = '1'
					ORDER BY name ASC
					LIMIT 1 OFFSET 9;
SELECT original_title, vote_average
FROM project_movie_database.movies
ORDER BY vote_average DESC
LIMIT 3;

SELECT original_title, revenue FROM project_movie_database.movies ORDER BY revenue DESC LIMIT 3;

SELECT original_title, vote_average FROM project_movie_database.movies
WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC LIMIT 1;

SELECT original_title FROM project_movie_database.movies
WHERE LOWER(TRIM(directors.name)) = 'brenda chapman';

SELECT original_title FROM project_movie_database.movies
JOIN project_movie_database.directors ON directors.name = directors.name 
WHERE directors.name = 'Brenda Chapman';

SELECT directors.name, COUNT(*) AS movie_count FROM project_movie_database.movies
JOIN project_movie_database.directors ON movies.director_id = director_id
GROUP BY directors.name
ORDER BY movie_count DESC LIMIT 1;

				SELECT directors.name, SUM(movies.revenue) AS total_revenue FROM project_movie_database.movies
				JOIN project_movie_database.directors ON movies.director_id = director_id.id
				GROUP BY directors.name
				ORDER BY total_revenue DESC
				LIMIT 1;	






