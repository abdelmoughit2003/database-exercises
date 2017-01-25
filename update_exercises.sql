
USE codeup_test_db;

# Write SELECT statements to output each of the following with a caption:
# Use the UPDATE command to update records in our albums table
# Add SELECT statements after each UPDATE so you can see the results of your handiwork

# All albums in your table.
SELECT name,release_date as 'All Albums' FROM albums;
# Make all the albums 10 times more popular (sales * 10)
UPDATE albums
set sales = sales*10;

SELECT name AS 'albums', sales AS 'sales' FROM albums;

# All albums released before 1980
SELECT name as 'Albums released before 1980' FROM albums WHERE release_date < "1980";
# Move all the albums before 1980 back to the 1800s.
UPDATE albums
set release_date = "1800"
WHERE release_date < "1980";

SELECT name, artist, release_date as 'Albums released before 1800' FROM albums;

# All albums by Michael Jackson
SELECT name as 'All albums by Michael Jackson' FROM albums;
# Change "Michael Jackson" to "Peter Jackson"
Update albums
set artist = "Peter Jackson"
WHERE artist = "Michael Jackson";

SELECT name as 'all albums by Peter Jackson' FROM albums WHERE artist = 'Peter Jackson';