-- Studio 15 Prompts: --

-- 1. List just the titles of all the movies in the database.

-- 2. List the title and year of each movie in the database in DESCENDING order of the year released. (Hint: Combine the SELECT command with the ORDER BY keywords).

-- 3. List all columns for all records of the directors table in ASCENDING alphabetical order based on the director’s country of origin.

-- 4. ORDER BY can also consider multiple columns. List all columns for all records of the directors table in ASCENDING alphabetical order first by the director’s country of origin and then by the director’s last name.

-- 5. Insert a new record into the directors table for Rob Reiner, an American film director.

-- 6. Combine the SELECT and WHERE keywords to list the last_name and director_id for Rob Reiner.

-- 7. Insert a new record into the movies table for The Princess Bride, which was released in 1987 and directed by Rob Reiner.

-- also could have been: INSERT INTO movies (title, year_released, director_id) VALUES ("Princess Bride", 1987, 11); -- but that requires you to know by memory Rob Reiner's id...

-- 8. If you list all of the data from the movies table (SELECT * FROM movies;), you will see a column of director ID numbers. This data is not particularly helpful to a user, since they probably want to see the director names instead. Use an INNER JOIN in your SQL command to display a list of movie titles, years released, and director last names.

-- 9. List all the movies in the database along with the first and last name of the director. Order the list alphabetically by the director’s last name.

-- 10. List the first and last name for the director of The Incredibles. You can do this with either a join or a WHERE command, but for this step please use WHERE.

-- 11. List the last name and country of origin for the director of Roma. You can do this with either a join or a WHERE command, but for this step please use a join.

-- 12. Delete a row from the movies table. What consequence does this have on directors? List the contents of both tables to find out.

-- 13. Try to delete one person from the directors table. What error results from trying to remove a director?

-- BONUS

-- 1. Note that SQL aliases give a table or column a temporary name. Assign aliases in at least 3 of the items above to make the columns names different and/or more readable in the output.

-- 2. List all of the movies in the database directed by Peter Jackson

-- 3a. Add another column to the movies table that holds the amount of money earned by each film.

-- 3b. Use UPDATE to enter these values for each movie in the database.

-- 3c. Generate a list that ranks the movie titles based on earnings.

-- 3d. Generate a list that only shows films that earned above (or below) a certain amount.
