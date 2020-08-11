-- Examples;
SELECT REPLACE('Hello World', 'Hell', '%$#@');
SELECT REPLACE('Hello World', 'o', '0');
-- The replace() function is case sensitive;
SELECT REPLACE('HellO World', 'o', '*');
-- Another example;
SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

-- Select from table;
SELECT REPLACE(title, 'e ', '3') FROM books;

-- Combine other string functions;
SELECT SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) FROM books;
-- Use aliases;
SELECT SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string' FROM books;
