-- The substring method count from 1 rather than 0;
SELECT SUBSTRING('Hello World', 1, 4);
-- This select from position 7 to the end;
SELECT SUBSTRING('Hello World', 7);
-- This will select from right to left;
SELECT SUBSTRING('Hello World', -3);

-- Select from table;
SELECT SUBSTRING(title, 1, 10) FROM books;
-- Use aliases;
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;

-- SUNBSTR is the same as SUBSTRING;
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;

-- Combine multiple string functions;
SELECT CONCAT ( SUBSTRING(title, 1, 10), '...' ) FROM books;
-- Use aliases;
SELECT CONCAT ( SUBSTRING(title, 1, 10), '...' ) AS 'short title' FROM books;
