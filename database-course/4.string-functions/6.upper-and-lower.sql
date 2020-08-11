-- Simple use;
SELECT UPPER('Hello World');
SELECT LOWER('Hello World');

-- Use with table;
SELECT UPPER(title) FROM books;

-- Combine it;
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;