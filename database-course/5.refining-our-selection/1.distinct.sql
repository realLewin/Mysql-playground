-- Normal;
SELECT author_lname FROM books;
-- Select duplicate;
SELECT DISTINCT author_lname FROM books;

-- Normal;
SELECT author_fname, author_lname FROM books;
-- Combine the result;
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
-- Seperate the result;
SELECT DISTINCT author_fname, author_lname FROM books;