-- Basic;
SELECT title FROM books LIMIT 3;
SELECT * FROM books LIMIT 1;

-- Use the first indicate the start position, the second indicate the select number;
-- LIMIT count from 0 rather than 1 in string function;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10,1;

-- Use a big number to select from start position to the end of table;
-- SELECT * FROM tbl LIMIT 95,18446744073709551615;
SELECT title FROM books LIMIT 5, 123219476457;
