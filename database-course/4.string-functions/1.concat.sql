SELECT author_fname, author_lname FROM books;

-- This is work;
SELECT CONCAT('Hello', 'World');
SELECT CONCAT('Hello', '...', 'World');

-- Concat selected;
SELECT CONCAT(author_fname, ' ', author_lname) FROM books;
-- Use aliases
SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books;

-- Combined select;
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ' ', author_lname) AS full
FROM books;
-- Use other delimiter;
SELECT author_fname AS first, author_lname AS last, 
  CONCAT(author_fname, ', ', author_lname) AS full
FROM books;

-- CONCAT VS CONCAT_WS; WS meaning With Seperator;
SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;

SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname) 
FROM books;