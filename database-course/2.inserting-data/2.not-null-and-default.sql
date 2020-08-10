-- Prepare;
CREATE DATABASE cat_app;
USE cat_app;

-- default version;
CREATE TABLE cats(name VARCHAR(50), age INT);
-- Make sure that name and age's value not null;
CREATE TABLE cats2(name VARCHAR(50) NOT NULL, age INT NOT NULL);
-- Create table with default value;
CREATE TABLE cats3(name VARCHAR(50) DEFAULT 'name not provided', age INT DEFAULT -1);
-- Create table with NOT NULL and DEFUALT value set;
CREATE TABLE cats4(
  name VARCHAR(50) NOT NULL DEFAULT 'name not provided',
  age INT NOT NULL DEFAULT -1
);

-- This is work
INSERT INTO cats(name) VALUES('the name');
INSERT INTO cats(age) VALUES(2);
INSERT INTO cats() VALUES();

-- This will cause warning or error;
INSERT INTO cats2(name) VALUES('the name');
INSERT INTO cats2(age) VALUES(2);

-- This will work with default value set;
INSERT INTO cats3(name) VALUES('the name');
INSERT INTO cats3(age) VALUES(3);
INSERT INTO cats3() VALUES();

-- This prevent user explicitly set the value to NULL;
INSERT INTO cats4(name) VALUES('the name');
INSERT INTO cats4(age) VALUES(3);
INSERT INTO cats4() VALUES();
INSERT INTO cats4(name, age) VALUES(NULL, NULL); -- not work;

