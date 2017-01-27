USE codeup_test_db;
#Adding a unique index to the name of album
ALTER TABLE albums
  ADD UNIQUE (name);

#Describing the albums table
DESCRIBE albums;

#Adding a duplicate to test the constraint
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES
  ("Michael Jackson", "Thriller", "1982", 46000000, "Pop, rock, R&B");