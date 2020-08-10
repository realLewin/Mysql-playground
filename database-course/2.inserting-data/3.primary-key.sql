-- Prepare;
CREATE DATABASE cat_app;
USE cat_app;

-- Create table with a unique key field;
CREATE TABLE unique_cats(
  cat_id INT NOT NULL,
  name VARCHAR(50),
  age INT,
  PRIMARY KEY (cat_id)
);

-- Create table that auto increment the unique key;
CREATE TABLE unique_cats2(
  cat_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  age INT,
  PRIMARY KEY (cat_id)
);

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'first', 33);
INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'first', 33);
-- This will cause error;
-- INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'first', 33);

-- work will
INSERT INTO unique_cats2(name, age) VALUES('first', 33);
INSERT INTO unique_cats2(name, age) VALUES('first', 33);
INSERT INTO unique_cats2(name, age) VALUES('first', 33);
