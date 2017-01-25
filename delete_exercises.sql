USE codeup_test_db;

-- Open up albums_seeder.sql, after your USE statement, add a TRUNCATE query to delete all records from the table before inserting.
-- Test your change and make sure you no longer get any duplicate records when running albums_seeder.sql.
-- Create a file called delete_exercises.sql.


-- Write SELECT statements for:
-- Albums released after 1991
-- Albums with the genre "disco"
-- Albums by "Whitney Houston" (...or maybe an artist of your choice)
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.

-- Use the MySQL command line client to make sure your records really were removed.
-- Commit your changes after each step and push to GitHub.


SELECT name  AS 'albums released after 1991',release_date FROM albums WHERE release_date > "1991";

DELETE FROM albums WHERE release_date > "1991";

SELECT name AS 'disco genre' FROM albums WHERE genre LIKE "%disco%";

DELETE FROM albums WHERE genre = "Disco";

Select name AS 'Album by Micheal Jackson' From albums where name = "Thriller";

DELETE FROM albums where artist LIKE "%Michael Jackson%";