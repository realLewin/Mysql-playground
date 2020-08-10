-- Some preparations:
CREATE DATABASE cat_app;
USE cat_app;

-- The create table template:

-- CREATE TABLE tablename
--   (
--     column_name data_type,
--   column_name data_type
-- );

-- Create sample table;
CREATE TABLE cats (
  name VARCHAR(100),
  age INT
);

-- Get table infomations;
-- SHOW TABLES;
-- SHOW COLUMNS FROM tablename;
-- DESC tablename;
SHOW TABLES;
SHOW COLUMNS FROM cats;
DESC cats;

-- Drop the table;
DROP TABLE cats;
