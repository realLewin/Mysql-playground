-- Define an Employees table, with the following fields:

-- id - number(automatically increments), mandatory, primary key
-- last_name - text, mandatory
-- first_name - text, mandatory
-- middle_name - text, not mandatory
-- age - number mandatory
-- current_status - text, mandatory, defaults to 'employed'

CREATE DATABASE course;
USE course;

CREATE TABLE employees(
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50),
  age INT NOT NULL,
  current_status VARCHAR(50) NOT NULL DEFAULT 'employed',
  -- PRIMARY KEY (id) -- The equal to set primary key;
);

-- test:
INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);