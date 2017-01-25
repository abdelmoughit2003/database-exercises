USE codeup_test_db;


# The name of all albums by Pink Floyd.
SELECT name AS 'Pink Floyd Albums'
FROM albums WHERE artist = 'Pink Floyd';
# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Year Seargent Peppers Was Released'
FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
# The genre for Nevermind
SELECT  genre AS 'genre of Nirvana'
FROM albums WHERE name='Nevermind';
# Which albums were released in the 1990s
SELECT  name AS 'Albums from The 1990''s'
FROM albums WHERE release_date =1990;
# Which albums had less than 20 million certified sales
SELECT  name AS 'Albums with less than 20 million sales'
FROM albums WHERE sales <20000000;
# All the albums in the rock genre
SELECT  artist AS 'Rock Albums'
FROM albums WHERE genre ='rock';

