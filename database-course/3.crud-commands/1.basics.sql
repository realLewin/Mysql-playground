-- Prepare;
CREATE TABLE cats(
  cat_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  breed VARCHAR(100),
  age INT,
  PRIMARY KEY (cat_id)
);

INSERT INTO cats(name, breed, age) VALUES
  ('Ringo', 'Tabby', 4),
  ('Cindy', 'Maine Coon', 10),
  ('Dumbledore', 'Maine Coon', 11),
  ('Egg', 'Persian', 4),
  ('Misty', 'Tabby', 13),
  ('George Michael', 'Ragdoll', 9),
  ('Jackson', 'Sphynx', 7);

-- Read data from database;
-- Read all column data from the table
SELECT * FROM cats;
-- Read special field from the table;
SELECT name FROM cats;
SELECT name, breed from cats;

-- Use WHERE to select special data;
SELECT * FROM cats WHERE age=4;
-- WHERE is case insensitive;
SELECT * FROM cats WHERE name='egG';
-- Another syntax;
SELECT * FROM cats WHERE cat_id=age;

-- Use aliases;
SELECT cat_id AS id, name AS 'cat name' from cats;

-- Update the table data
-- SELECT before UPDATE;
SELECT * FROM cats WHERE breed='tabby';
UPDATE cats SET breed='Shorthair' WHERE breed='tabby';
SELECT * FROM cats WHERE name='Misty';
UPDATE cats SET age=14 WHERE name='Misty';

-- Delete the table data;
-- SELECT before DELETE;
SELECT * FROM cats WHERE name='Egg';
DELETE FROM cats WHERE name='Egg';
-- Delete all table data;
DELETE FROM cats;
