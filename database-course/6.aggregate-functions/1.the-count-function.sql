-- Count how many rows in books table;
SELECT COUNT(*) FROM books;
-- Select how many author_fname in table;
SELECT COUNT(author_fname) FROM books;

-- Conut author_fname without duplicate;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- How many title contain 'the';
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';