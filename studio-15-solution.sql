-- Studio 15 Solution --

-- this was my original solution for each prompt:

-- 1. List just the titles of all the movies in the database.
SELECT title FROM movies;

-- 2. List the title and year of each movie in the database in DESCENDING order of the year released. (Hint: Combine the SELECT command with the ORDER BY keywords).
SELECT title, year_released from movies ORDER BY year_released;

-- 3. List all columns for all records of the directors table in ASCENDING alphabetical order based on the director’s country of origin.
SELECT * FROM directors ORDER BY country ASC;

-- 4. ORDER BY can also consider multiple columns. List all columns for all records of the directors table in ASCENDING alphabetical order first by the director’s country of origin and then by the director’s last name.
SELECT * FROM directors ORDER BY country ASC, last_name ASC;

-- 5. Insert a new record into the directors table for Rob Reiner, an American film director.
INSERT INTO directors (first_name, last_name, country) VALUES ("Rob", "Reiner", "USA");

-- 6. Combine the SELECT and WHERE keywords to list the last_name and director_id for Rob Reiner.
SELECT last_name, director_id FROM directors WHERE (first_name="Rob") AND (last_name="Reiner");

-- 7. Insert a new record into the movies table for The Princess Bride, which was released in 1987 and directed by Rob Reiner.
INSERT INTO movies (title, year_released, director_id) VALUES ("Princess Bride", 1987, (SELECT director_id FROM directors WHERE first_name="Rob" AND last_name="Reiner"));

SELECT * FROM movies WHERE title="Princess Bride";

-- also could have been: INSERT INTO movies (title, year_released, director_id) VALUES ("Princess Bride", 1987, 11); -- but that requires you to know by memory Rob Reiner's id...

-- 8. If you list all of the data from the movies table (SELECT * FROM movies;), you will see a column of director ID numbers. This data is not particularly helpful to a user, since they probably want to see the director names instead. Use an INNER JOIN in your SQL command to display a list of movie titles, years released, and director last names.
SELECT title, year_released, directors.last_name FROM movies INNER JOIN directors ON directors.director_id = movies.director_id ORDER BY year_released;

-- 9. List all the movies in the database along with the first and last name of the director. Order the list alphabetically by the director’s last name.
SELECT title, year_released, directors.first_name, directors.last_name FROM movies INNER JOIN directors ON directors.director_id= movies.director_id ORDER BY directors.last_name;

-- 10. List the first and last name for the director of The Incredibles. You can do this with either a join or a WHERE command, but for this step please use WHERE.
SELECT first_name, last_name from directors where director_id=(SELECT director_id FROM movies where title="The Incredibles");

-- 11. List the last name and country of origin for the director of Roma. You can do this with either a join or a WHERE command, but for this step please use a join.
SELECT directors.last_name, directors.country, title FROM movies INNER JOIN directors ON directors.director_id = movies.director_id AND movies.title="Roma";
SELECT last_name, country, movies.title FROM directors INNER JOIN movies ON movies.director_id = directors.director_id AND movies.title="Roma";
-- SELECT last_name, country, movies.title FROM directors INNER JOIN movies ON movies.director_id = directors.director_id;

-- took me a long time to get to that line above, I went through a lot before remembering you can just add more conditions on the inner join:
-- SELECT directors.last_name, directors.country FROM movies INNER JOIN directors ON directors.director_id = (SELECT director_id FROM movies WHERE title="Roma") LIMIT 1;
-- SELECT last_name, country FROM directors INNER JOIN movies ON directors.director_id = 5 LIMIT 1;
-- SELECT directors.last_name, directors.country FROM movies INNER JOIN directors ON directors.director_id = 5;
-- SELECT last_name, country FROM directors INNER JOIN movies ON directors.director_id = movies.director_id;

-- 12. Delete a row from the movies table. What consequence does this have on directors? List the contents of both tables to find out.
SELECT * FROM movies;
DELETE FROM movies WHERE movie_id=17;
-- INSERT INTO movies (title, year_released, director_id) VALUES ("Princess Bride", 1987, (SELECT director_id FROM directors WHERE first_name="Rob" AND last_name="Reiner"));
SELECT * FROM movies; -- Princess Bride is gone
SELECT * FROM directors; -- no change

-- 13. Try to delete one person from the directors table. What error results from trying to remove a director?
DELETE FROM directors where director_id = 3; -- Error Code 1451: Foreign Key restraint (some movie depends on this director)
-- you can delete a director that isn't currently associated with any movies though
