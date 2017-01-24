USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(

#   id — auto incrementing unsigned integer primary key
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   artist — string for storing the recording artist name
    artist VARCHAR(50) NOT NULL ,
#   name — string for storing a record name
  name VARCHAR(50) NOT NULL,
#   release_date — integer representing year record was released (Note: MySQL also supports a YEAR data type!)
  release_date DATE NOT NULL,
#   sales — floating point value for number of records sold (in millions)
  sales FLOAT UNSIGNED NOT NULL,
#   genre — string for storing the record's genre(s)
  genre TEXT NOT NULL,

    PRIMARY KEY (id)
);