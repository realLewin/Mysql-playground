-- prepare
CREATE DATABASE cat_app;
USE cat_app;
CREATE TABLE cats(name VARCHAR(50), age INT);

-- basic insert(The order is matter!);
-- INSERT INTO table_name(column_name) VALUES (data);
INSERT INTO cats(name, age) VALUES('blit', 10);
INSERT INTO cats(age, name) VALUES(5, 'blet');

-- Multiple insert;
INSERT INTO cats(name, age) VALUES('first', 1), ('second', 2), ('third', 3);
