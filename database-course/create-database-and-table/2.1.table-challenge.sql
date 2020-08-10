/**
 Create a pastries table

 It should include 2 columns: name and quantity.  Name is 50 characters max.
 Inspect your table/columns in the CLI
 Delete your table!
*/

CREATE DATABASE pastry;
USE pastry;

CREATE TABLE pastries (
  name VARCHAR(50),
  quantity INT
);

SHOW COLUMNS FROM pastries;
-- Or the samething:
DESC pastries;

-- DROP TABLE pastries;
